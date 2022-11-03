CREATE TABLE student(
s_id int primary key,
s_name varchar(20),
Course_name varchar(50),
marks int
)

insert into student values(101,'Hemant','Phys',80)
insert into student values(102,'Hemant','Chem',70)
insert into student values(104,'Hemant','Maths',60)
insert into student values(105,'Hemant','Eng',55)


insert into student values(106,'Aditya','Phys',60)
insert into student values(107,'Aditya','Chem',80)
insert into student values(108,'Aditya','Maths',90)
insert into student values(109,'Aditya','Eng',65)

insert into student values(110,'Sonali','Phys',78)
insert into student values(111,'Sonali','Chem',85)
insert into student values(112,'Sonali','Maths',90)
insert into student values(113,'Sonali','Eng',60)

insert into student values(114,'Akshat','Phys',68)
insert into student values(115,'Akshat','Chem',75)
insert into student values(116,'Akshat','Maths',95)
insert into student values(117,'Akshat','Eng',65)

select* from student
--drop table student


CREATE OR ALTER PROCEDURE p1 @t_mark INT AS 
BEGIN
SELECT s_name, SUM(marks) AS s_total from student group by s_name having  SUM(marks) <@t_mark
END

select* from student

CREATE OR ALTER PROCEDURE p2 @d_s_name varchar(20) AS
BEGIN
DECLARE @total_marks AS INT
SELECT  @total_marks= SUM(marks)  from student group by s_name having s_name = @d_s_name 
END

EXEC p1 313 
EXEC p2'Sonali'
 