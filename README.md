# sql-from-file

Still find it easier to write complex query in pure SQL?

Annoyed with keeping SQL code in the same file as your code? Lack of syntax coloring in string?

sql-from-file to the rescue!

## Syntax

### Ruby

Parse SQL file and get query by it's name (see: comment)

    sf = SQLFromFile.new("filename.sql")
    sf.query(:pl)

#### Replace variables

    sf.query(:pl, {date: Date.today})

### SQL file format

Put SQL query in your file

Name your query by providing a comment 

### Comment format

-- ruby-sql-query: queryname

### Multiple queries in one file

Create comments as described above for separates queries (comment above query)

### Variables

Should be defined as (2 underscores on each side):

    __VARIABLE_NAME__

## Other

It's still quite dumb. Doesn't do any string validation. There is a plan to fix that.
