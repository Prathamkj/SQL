create database college5;
use college5;
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
select * from student;
-- table queriess
-- to add column -age
alter table student
add column age int not null default 21;
-- to change column(rename)
-- alter table student
-- change column student baccho
-- We can also modify the table
-- TRUNCATE TABLE - DELETS THE DATA IN THE TABLE
truncate table student;


