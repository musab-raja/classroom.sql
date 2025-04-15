CREATE DATABASE COLLAGE;

USE COLLAGE;
CREATE TABLE STUDENT (
 ROLLNO INT PRIMARY KEY,
 NAME VARCHAR(50),
 AGE INT NOT NULL
);

INSERT INTO STUDENT VALUES(1, 'AMAN', 26);
INSERT INTO STUDENT VALUES(2, 'ALI', 36);

SELECT * FROM STUDENT WHERE id = (1,2);
SHOW databases;
SHOW tables;
INSERT INTO STUDENT VALUES(3,'ROHIT',45);

CREATE DATABASE LIFE;

USE LIFE;

CREATE TABLE LINE1 (
id INT ,
name VARCHAR (50),
age INT,
city VARCHAR(20),
PRIMARY KEY (id)
);

CREATE TABLE emp (
id INT,
salary INT DEFAULT 25000);

INSERT INTO emp (id) VALUES (101);
SELECT * FROM emp;

SELECT * FROM  LIFE WHERE id = 101; # kisi praticular chez ka leye use hota ha


CREATE DATABASE school;

USE school;

CREATE TABLE student ( 
rollno INT PRIMARY KEY,
name VARCHAR (50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR (20)
);

INSERT INTO student
(rollno,name, marks, grade, city)
VALUES
(101, "ali", 78,"c" , 'pune'),
(102, 'alyan',80, 'b' , 'karachi'),
(103, 'chetan',93, 'a' , 'lahore'),
(104, 'bilal',96, 'c' , 'mari'),
(105, 'farah', 90,'a' , 'pune');

SELECT  name, marks from student;

SELECT * FROM student WHERE city IN ('karachi');

SELECT DISTINCT city FROM student; # jab dublicate value na chiaye hu tab use 

SELECT * FROM student WHERE marks + 10 > 100 ;

SELECT * FROM student LIMIT 3; # jitni row chaiye check kare karne ka leye 

SELECT * FROM student order by city ASC;

SELECT * FROM student order by city desc;

SELECT max(marks) FROM student ;

SELECT min(marks) FROM student ;

SELECT count(marks) FROM student ;

SELECT avg(marks) FROM student ;

SELECT count(name) FROM student group by CITY;

SELECT count(name),city FROM student group by CITY HAVING max(marks) > 90;

SET SQL_SAFE_UPDATES = 0;

update student
SET grade = "D"
WHERE grade = "A";

SELECT * FROM student;
select * from school;

use school;

select * from student;

SET SQL_SAFE_UPDATES = 0; #ceze ko change karne ka leye

update student
set marks = 22
where rollno = 102;

select * from student;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM student 
WHERE marks < 90;

select * from student;

SET SQL_SAFE_UPDATES = 1;

update student
set marks = 44
where rollno = 102;
# reverse database hamai batat ha ka kase ek database dosre database sa link ha  ye database ma hoti ha \

select * from student;

ALTER TABLE student
add COLUMN age int;

ALTER TABLE student #hatane ka leye
drop COLUMN age;

ALTER TABLE student
add COLUMN age int not null default 20;# mtlb ak hi age rakne ka leye defult use keya

ALTER TABLE student
modify COLUMN age varchar (2);

ALTER TABLE student
change COLUMN age teriage int; # chnage koi heading ka name change karne ka leye

ALTER TABLE student
rename to stud;# rename karne ka leye 

ALTER TABLE stud
rename to student; 

truncate table student;# drob table ko delete karta ha ye table ka data ko or agr dobara lena hu tu sirf pecle datsa ko dabara uptade karle
select * from student;

select city from student
union
select city from student;# ek coloum ka sra data lene ka leye is sa ap dosre table ka leye nbhin use kar skte ha

select avg(marks)
from student;

select name
from student
where marks > 87.400;  


select name, marks
from student
where marks > (select avg(marks) from student);#ye sab query kelati ha mtlb ek query ka ander dosry query


select rollno
from student
where rollno %2=0;# ye bhi sub query ki example ha


select name,rollno
from student
where rollno in (102,104);#agr apko name ka sth chaiye tu

select max(marks) from student where city = ('karachi');# this is also sub query


