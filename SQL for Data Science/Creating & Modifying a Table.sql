CREATE TABLE students(
	id INT auto_increment PRIMARY KEY,
    name VARCHAR(50) NOT NULL DEFAULT "NO NAME",
    age INT,
    email VARCHAR(100) UNIQUE, 
    admission_date DATE
);
SELECT * FROM students;
DESCRIBE students;
RENAME TABLE students TO stud;
SHOW TABLES;
-- DROP TABLE stud;  
-- SHOW TABLES;
ALTER TABLE stud RENAME COLUMN id TO rno;
DESCRIBE stud;
ALTER TABLE stud DROP COLUMN admission_date;
ALTER TABLE stud ADD COLUMN is_passed BOOL default TRUE;
DESCRIBE stud;
ALTER TABLE stud MODIFY COLUMN name VARCHAR(50) default ("");
DESCRIBE stud;
ALTER TABLE stud MODIFY COLUMN email VARCHAR(50) AFTER is_passed;
DESCRIBE stud;