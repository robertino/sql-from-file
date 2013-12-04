-- ruby-sql-query: phones
SELECT * FROM phones WHERE gps=1

-- ruby-sql-query: users
SELECT name, surname
FROM users
WHERE active=1 AND 
      (role='admin' OR role='super')
      
-- ruby-sql-query: keywords
SELECT status, cost
FROM keywords
WHERE campaign_id = '__CAMPAIGN__'
      AND click_date = '__DATE__'
      
