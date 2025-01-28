CREATE DATABASE college2;
USE college2;
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
INSERT INTO student
(rollno , name , marks , grade , city)
VALUES
(101 , "anil", 78 , "c" , "pune"),
(102, "chetan", 85, "A" , "Mumbai"),
(103, "bhumika" , 93, "B" , "Mumbai"),
(104,"pratham", 74, "B" , "Seoni");
SELECT * FROM student;
-- IMPORTANT COMMANDS IN SQL
-- WHERE CLAUSE
 SELECT city FROM student;
 -- where clause in select -> so it will show specific columns
select * from student where marks > 80 AND city = "Mumbai";
select * from student where marks + 10 > 100;
-- Between
select * from student where marks between 80 and 90;
-- IN -> we can also write NOT IN - so it would not include  
select * from student where city in ("pune","Mumbai");

-- LIMIT CLAUSE - limit laga dega 
select * from student where marks > 80 limit 2;
-- Order by clause - in ascending and descendingg
select * from student order by name ASC;
-- Aggerate functions
select MAX(marks) from students;
select count(rollno) from students;
-- Group by clause -> toh ye group kardega cities ko
select city , count(rollno) 
from student group by city;
 