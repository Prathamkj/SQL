--  Tables in Sql
CREATE DATABASE college1;
USE college1;
-- creating a table
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50)
); 
-- to print the table
SELECT * FROM student; 
-- Inserting the values in table
INSERT INTO student 
(rollno , name)
VALUES
(3 ,"pratham"),
(36 , "Krishna");
-- we can add values in same line also
INSERT INTO student VALUES (88 , "Ishan"); 