create table students(
	stud_id int,
	stud_name nvarchar(20),
	course_name nvarchar(20),
	month int 
);

insert into students values(101,'Rounak','Physics',01);
insert into students values(102,'Sonali','Geography',03);

insert into students values(103,'Ankit','Physics',04);
insert into students values(104,'Manish','History',05);

insert into students values(106,'Sanjana','Hindi',03);
insert into students values(107,'Akhil','Maths',01);

insert into students values(108,'Satyam','English',07);
insert into students values(109,'Akash','Physics',08);

insert into students values(110,'Rupali','Chemistry',09);
insert into students values(111,'Nanda','Maths',10);

select * from students

select stud_name,month from STUDENTS WHERE month>7

drop table students