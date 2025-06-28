SELECT CONCAT(LOWER(name), id, '@gmail.com') as EMAIL FROM students; -- Concats 2 or more strings
SELECT LENGTH(name) as Length FROM students; -- Checks number of bytes but returns length of string
SELECT ROUND(12.98757,2); -- Rounds up
SELECT ROUND(DATEDIFF(NOW(), '1992-07-06')/365,1) as Experience -- DATEDIFF gives Days


-- EXPLORE FROM HANDBOOK