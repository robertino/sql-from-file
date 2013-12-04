require_relative '../test_helper'

class TestThing < Test::Unit::TestCase
  
  def test_parses_multiple
    sqf = SQLFromFile.new(File.join(File.dirname(File.expand_path(__FILE__)), 'qs.sql'))
    assert_equal 3, sqf.queries.size
    puts sqf.query(:phones)
    puts sqf.query(:keywords, {date: Date.today, campaign: 'AMERICA'})
  end

  def test_parses_single
    sqf = SQLFromFile.new(File.expand_path('../q.sql', __FILE__))
    assert_equal 1, sqf.queries.size
    puts sqf.query
    puts sqf.query(nil, {else: 'left'})
  end

end