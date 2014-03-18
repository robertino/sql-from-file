# sql-from-file

Still find it easier to write complex query in pure SQL?

Annoyed with keeping SQL code in the same file as your code? Lack of syntax coloring in string?

sql-from-file to the rescue!

## Usage

Put this in your Gemfile

    gem 'sql-from-file', :git => 'git@github.com:robertino/sql-from-file.git', :require => 'sql_from_file'

## Syntax

### Ruby

Parse SQL file and get query by it's name (see: comment)

    sqf = SQLFromFile.new("filename.sql")
    sqf.query(:query_name)

    sqf.query # this works only if there is only one query in a file

#### Replace variables

    sqf.query(:query_name, {date: Date.today})

### SQL file format

Put SQL query in your file

Name your query by providing a comment above the query (you can skip this if only one query is in SQL file)

#### Comment format

    -- ruby-sql-query: query_name

where query name is going to be the symbol used to get the query

#### Multiple queries in one file

Create comments as described above for separates queries (comment above query)

#### Variables

Should be defined as (2 underscores on each side):

    __VARIABLE_NAME__

## Other

This gem is still quite dumb. It doesn't do any string validation. There is a plan to fix that.
