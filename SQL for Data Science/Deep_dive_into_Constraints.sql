-- It prevents inserting data which is not as per constraints.
CREATE TABLE accounts(
	id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INT CHECK (age>=18)
);
DESCRIBE accounts;
SELECT * FROM accounts;
INSERT INTO accounts (id, name, email, age) VALUES (1, "HARRY", "harry@gamil.com", 16); -- Can't insert beause age<18
INSERT INTO accounts (id, name, email, age) VALUES (1, "HARRY", "harry@gamil.com", 18); -- Will insert
SELECT * FROM accounts;

-- Removing a constraint
-- ALTER TABLE table_name DROP CONSTRAINT constraint name;