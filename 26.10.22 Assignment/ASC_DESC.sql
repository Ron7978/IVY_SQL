create table employee(
	emp_id int,
	emp_name nvarchar(20),
	emp_dept nvarchar(20)
 );

 insert into employee values(101,'Sonali','Java Dev');
 insert into employee values(102,'Rounak','.Net Dev');
 insert into employee values(103,'Soham','SQl Dev');
 insert into employee values(104,'Ramesh','Python Dev');

 insert into employee values(105,'Mukesh','Full_Stack Dev');
 insert into employee values(106,'Aakash','JavaScript Dev');
 insert into employee values(107,'Satyam','Web_Page Dev');
 insert into employee values(108,'Akhil','System_Design Dev');

 select * from employee

 select * from employee order by emp_name ASC, emp_dept DESC 