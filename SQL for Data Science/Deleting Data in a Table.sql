USE schooldb;
SELECT * FROM student;

-- DELETE FROM student; It deletes whole table.

DELETE FROM student WHERE date_of_birth IS NULL;
SELECT * FROM student;

DELETE FROM student WHERE id = 14;
SELECT * FROM student;

DELETE FROM student WHERE age<20;
SELECT * FROM student;

DELETE FROM student; -- It Deletes the date from table but In the scema the Table schema would be there
SELECT * FROM student;

DROP TABLE student; -- It removes the whole schema of the table
SHOW TABLES;