CREATE DATABASE school;
USE school;

CREATE TABLE classes(
	class_id INT AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    class_id INT,
    FOREIGN KEY (class_id) REFERENCES classes(class_id) -- Syntax to set a foreign key
        ON UPDATE CASCADE -- When the primary table data is updated corusponding data will be updated as well
        ON DELETE SET NULL -- When the primary table data is deleted corusponding data will be set to null
);

INSERT INTO classes (class_name) VALUES ('Mathematics'), ('Science'), ('History');
INSERT INTO students (student_name, class_id) VALUES ('Alice', 1),('Bob', 2),('Charlie', 1);

SELECT * FROM classes;
SELECT * FROM students;

DELETE FROM classes WHERE class_id=2;
SELECT * FROM students;
UPDATE classes SET class_id=101 WHERE class_id=1;
UPDATE classes SET class_id=102 WHERE class_id=2;
UPDATE classes SET class_id=103 WHERE class_id=3;
SELECT * FROM classes;
SELECT * FROM students;


-- How to see relation
SHOW CREATE TABLE students;