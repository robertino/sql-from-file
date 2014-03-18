require_relative '../test_helper'

class TestThing < Test::Unit::TestCase
  
  def test_parses_multiple
    sqf = SQLFromFile.new(File.expand_path('../qs.sql', __FILE__))
    assert_equal 3, sqf.queries.size
    assert_equal [:phones, :users, :keywords], sqf.queries
    puts sqf.query(:phones)
    puts sqf.query(:keywords, {date: Date.today, campaign: 'America'})
  end

  def test_parses_single_named
    sqf = SQLFromFile.new(File.expand_path('../qn.sql', __FILE__))
    assert_equal 1, sqf.queries.size
    assert_equal [:named_query], sqf.queries
    puts sqf.query(:named_query, {else: 'left'})
  end

  def test_parses_single_unnamed
    sqf = SQLFromFile.new(File.expand_path('../q.sql', __FILE__))
    assert_equal 1, sqf.queries.size
    assert_equal [:only], sqf.queries
    puts sqf.query(nil, {else: 'left'})
  end

end