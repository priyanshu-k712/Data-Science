SELECT CURRENT_DATE; -- Current Date
SELECT CURRENT_TIME; -- CUrrent Time
SELECT CURRENT_TIMESTAMP; -- Current Date & Time ++ It is a better practice for records
SELECT NOW(); -- Current ALTERNATE of CURRENT_TIMESTAMP

SELECT LOCALTIME; -- SERVER's local time
SELECT LOCALTIMESTAMP; -- SERVER's local timestamp

USE harry;
SHOW TABLES;
ALTER TABLE stud ADD COLUMN date_joined DATETIME DEFAULT (NOW());
SELECT * FROM stud;

INSERT INTO stud (rno, name, age, is_passed, email, date_joined) VALUES (3, "Henry", 24, False, "henry@gmail.com", NOW()); -- NOW() can be used at the time of inserting
SELECT * FROM stud;

