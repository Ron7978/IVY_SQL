create table employee(
	emp_id int primary key, 
	emp_name nvarchar(20) not null UNIQUE, 
	salary bigint
);

insert into employee values (101,'Rohit',50000);
insert into employee values (102,'Akshat',60000);
insert into employee values (103,'Punita',80000);
insert into employee values (104,'Jai',65000);
insert into employee values (105,'Rounak',90000);
insert into employee values (106,'Nilesh',10000);
insert into employee values (107,'Hardik',55000);
insert into employee values (108,'Animesh',77000);

select * from employee

drop table employee

select * from employee where salary>50000 and salary<80000