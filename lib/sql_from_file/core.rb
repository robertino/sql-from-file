class SQLFromFile
  QUERY_SEPARATOR = "-- ruby-sql-query:"

  def initialize(filename)
    queries = File.read(filename).split(QUERY_SEPARATOR).map{|q| q.strip}.select{|q| !q.empty?}
    if queries.size == 1
      @queries = {only: queries.first}
    else
      @queries = queries.inject({}) {|all,one| all[one.lines.first.strip.to_sym] = one.lines[1..-1].join; all}
    end
  end
  
  def queries
    @queries.keys
  end
  
  def query(name=nil, vars = {})
    raise "No queries found" if @queries.size == 0
    raise "Specify which query" if @queries.size > 1 and name.nil?
    # raise "Unsupported characters in values: ['\";]" if vars.values.select{|v| v.class == String}.any?{|v| v =~ /[\'\"\;]/}
    query = @queries[name || :only]
    return query if vars.empty?
    vars.inject(query) {|a,kv| k,v=*kv; a = a.gsub("__" + k.to_s.upcase + "__", v.to_s)}
  end
end