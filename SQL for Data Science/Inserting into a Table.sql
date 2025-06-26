CREATE DATABASE schooldb;
USE schooldb;
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10),
    date_of_birth DATE
);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (1, "Rohan", 34, "10th", "1992*02-13");
SELECT * FROM student;
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (2, 'Ravi Sharma', 17, '11th', '2006-03-22'); 
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (3, 'Meena Joshi', 15, '9th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (4, 'Arjun Verma', 18, '12th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (5, 'Sara Ali', 16, '10th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (6, 'Karan Mehta', 17, '11th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (7, 'Tanya Roy', 15, '9th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (8, 'Vikram Singh', 18, '12th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (9, 'Anjali Desai', 16, '10th', NULL);
INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (10, 'Farhan Zaidi', 17, '11th', NULL);
SELECT * FROM student;



INSERT INTO student (id, name, age, grade, date_of_birth) VALUES 
(11, "Shubham", 16, "10th", "2007-05-15"),
(12, "Vikrant", 16, "10th", "2007-04-04"),
(13, "Harry", 16, "10th", "2007-06-15"),
(14, "Priyanshu", 16, "10th", "2007-02-17");

SELECT * FROM student;