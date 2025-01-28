CREATE DATABASE college;
-- created a database
CREATE DATABASE IF NOT EXISTS college;
-- agar isme pahale se hi connect ho toh ye warning de degar  
USE college;
-- creating a table
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);
-- insertingg data into the tablename
INSERT INTO student VALUES(1 , "Pratham" , 26);
-- semi column is imp
INSERT INTO student VALUES(2 , "krishna" , 24);
-- to prinnt the table 
SELECT * FROM student;

SHOW TABLES;
-- show all the tables and databases 
SHOW DATABASES;
