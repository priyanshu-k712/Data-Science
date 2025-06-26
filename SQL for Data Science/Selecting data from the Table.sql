USE schooldb;
SELECT * FROM student;
SELECT name, grade FROM student;
SELECT * FROM student WHERE grade="10th";
SELECT name, age, date_of_birth FROM student WHERE grade="10th";
SELECT  date_of_birth, name, age FROM student WHERE grade="10th"; -- Ordered as we write
SELECT * FROM student WHERE age>16 and grade="10th";
SELECT * FROM student WHERE age BETWEEN 16 AND 20;
SELECT * FROM student WHERE grade IN ("10th", "12th");
SELECT * FROM student WHERE name LIKE "A%"; -- Names starting with 'A'
SELECT * FROM student WHERE name NOT LIKE "A%"; -- Names not starting with 'A'
SELECT * FROM student WHERE name NOT LIKE "%Khan"; -- Names not ending with 'Khan'


-- UNDERSTANDING NULL VALUES
SELECT * FROM student WHERE date_of_birth = NULL; -- = doesnt work with NULL
SELECT * FROM student WHERE date_of_birth is NULL; -- is work with NULL
SELECT * FROM student WHERE date_of_birth is NOT NULL; -- is work with NULL


-- COMPLEX QUERY
SELECT * FROM student WHERE date_of_birth IS NOT NULL AND age>16 and grade="10th";
SELECT * FROM student WHERE (grade="10th" OR grade="11th") AND age>16;

-- ORDER BY
SELECT * FROM student WHERE date_of_birth is NOT NULL ORDER BY age DESC;
SELECT * FROM student WHERE date_of_birth is NOT NULL ORDER BY age ASC;
SELECT * FROM student WHERE date_of_birth is NOT NULL ORDER BY age ASC LIMIT 5;
SELECT * FROM student WHERE date_of_birth is NOT NULL ORDER BY age ASC LIMIT 2, 5; -- Skip 2 and start from there and select 5

