USE harry;
SHOW TABLES;
SELECT * FROM stud;

-- Read Handbook

SELECT @@autocommit; -- TO see autocommit status

SET autocommit=0; -- To disable auto commit
-- SET autocommit=1; -- To enable auto commit 

INSERT INTO stud (rno, name, age, is_passed, email) VALUES (1, "Harry", 34, True, "harry@gmail.com");
INSERT INTO stud (rno, name, age, is_passed, email) VALUES (2, "John", 33, True, "john@gmail.com");
SELECT * FROM stud;	

START transaction;
UPDATE stud SET age = age+1 WHERE rno=1; -- Not finalized
UPDATE stud SET age = age-1 WHERE rno=2; -- Not Finalized
COMMIT; -- Now Finalized
SELECT * FROM stud;	

-- Rollback Example

START transaction;
UPDATE stud SET age = age+1 WHERE rno=1; -- Not finalized
UPDATE stud SET age = age-1 WHERE rno=2; -- Not Finalized
ROLLBACK; -- It will work here because we have not commited.
SELECT * FROM stud;	
COMMIT; -- After commit if i used Rollback it won't affect beacuse the changes were commited hence they can't be changed now.
SELECT * FROM stud;	

SET autocommit=1;