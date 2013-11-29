require_relative '../test_helper'

class TestThing < Test::Unit::TestCase
  
  def test_parses
    sf = SQLFromFile.new(File.join(File.dirname(File.expand_path(__FILE__)), 'q.sql'))
    assert_equal 3, sf.queries.size
    puts sf.query(:phones)
    puts sf.query(:keywords, {date: Date.today, campaign: 'AMERICA'})
  end

end