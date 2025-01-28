CREATE DATABASE college3;
USE college3;
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
--
select * from student;
select distinct city from student;
-- city ke basis pe ascending marks arrange karna hai
select city , avg(marks)
from student
group by city
order by city;
-- kitne students ko konnsa grade mila
select grade , count(marks)
from student
group by grade
having max(marks);
-- Having clause -- it is a conditional clause
-- Same as where clause
-- we have a sequence to write a clauses
select city from student
where grade = "B"
group by city
having max(marks) > 90
order by city desc;
-- to off the safe mode in sql
set sql_safe_updates = 0;
-- Update querie to update in table
update student
set grade = "0"
where grade = "A";
-- Delete querie 
delete from student
where marks < 80;