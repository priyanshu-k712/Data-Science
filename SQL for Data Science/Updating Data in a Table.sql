USE schooldb;
SELECT * FROM student;
UPDATE student SET grade="IX" WHERE grade="9th";
UPDATE student SET grade="X" WHERE grade="10th";
UPDATE student SET grade="XI" WHERE grade="11th";
UPDATE student SET grade="XII" WHERE grade="12th";
SELECT * FROM student;

UPDATE student SET age=age+1 WHERE age<18;
SELECT * FROM student;

UPDATE student SET grade="Unknown" WHERE grade IS NULL;
SELECT * FROM student;