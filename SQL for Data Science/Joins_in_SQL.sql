CREATE DATABASE harryjoins;
USE harryjoins;

-- Create students table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert students
INSERT INTO students (id, name) VALUES
(1, 'Rohan'),
(2, 'Aakash'),
(3, 'Priya'),
(4, 'Sneha'),
(5, 'Rahul'),
(6, 'Anjali'),
(7, 'Vikram'),
(8, 'Simran'),
(9, 'Karan'),
(10, 'Neha'),
(11, 'Harry'),
(12, 'Lakshayraj Dash'),
(13, 'Ishita'),
(14, 'Amit'),
(15, 'Meena');

-- Create marks table
CREATE TABLE marks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    score INT,
    FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert marks
INSERT INTO marks (student_id, subject, score) VALUES
(1, 'Math', 92),
(1, 'Science', 88),
(2, 'Math', 81),
(2, 'English', 79),
(3, 'Math', 75),
(3, 'Science', 73),
(4, 'Science', 85),
(5, 'English', 78),
(5, 'Math', 80),
(6, 'Science', 66),
(6, 'English', 68),
(7, 'Math', 55),
(8, 'English', 74),
(10, 'Science', 89),
(10, 'Math', 83),
(12, 'Math', 77),
(12, 'Science', 79),
(13, 'English', 60),
(14, 'Science', 69),
(14, 'English', 72);

SELECT * FROM marks;
SELECT * FROM students;

SELECT students.name, marks.subject, marks.score FROM students INNER JOIN marks ON students.id=marks.student_id; -- Inner Join Id is in both table common
SELECT students.name, marks.subject, marks.score FROM students LEFT JOIN marks ON students.id=marks.student_id; -- Left Join All values of left table will be there if corrusponding values in right table are absent then they eill be null
SELECT students.name, marks.subject, marks.score FROM students RIGHT JOIN marks ON students.id=marks.student_id; -- RIGHT Join All values of right table will be there if corrusponding values in left table are absent then they eill be null
SELECT students.name, marks.subject, marks.score FROM students CROSS JOIN marks ON students.id=marks.student_id; -- CROSS Join All values of right and left table will be there if corrusponding values in left or right table are absent then they eill be null