create database college4;
use college4;
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

CREATE TABLE dept(
id int primary key,
name varchar(50)
);

CREATE TABLE teacher(
id int primary key,
name varchar(50),
dept_id int,
foreign key (dept_id) references dept(id)
-- both the tables are connected through the foreign key 
on update cascade
on delete cascade
);
INSERT INTO student
(rollno , name , marks , grade , city)
VALUES
(101 , "anil", 78 , "c" , "pune"),
(102, "chetan", 85, "A" , "Mumbai"),
(103, "bhumika" , 93, "B" , "Mumbai"),
(104,"pratham", 74, "B" , "Seoni");