create table employee(
	emp_id int, 
	emp_name nvarchar(20) not null UNIQUE, 
	salary bigint
);

insert into employee values (101,'Rohit',50000);
insert into employee values (102,'Akshat',60000);
insert into employee values (103,'Punita',80000);
insert into employee values (104,'Jai',60000);
insert into employee values (105,'Rounak',80000);
insert into employee values (106,'Nilesh',10000);
insert into employee values (107,'Hardik',50000);
insert into employee values (108,'Animesh',80000);
--insert into employee values (109,'Dinesh',60000);

select * from employee

select emp_name,salary from employee
WHERE salary
IN ( SELECT salary FROM employee GROUP BY salary HAVING COUNT(salary) > 1) order by salary

drop table employee
