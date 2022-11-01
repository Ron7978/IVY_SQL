create table student(
	stud_id int primary key not null,
	stud_name varchar(20),
	stud_mark int,
	stud_course varchar(20)
);

insert into student values(1,'Rounak',100,'math')
insert into student values(2,'Sameer',99,'math')
insert into student values(3,'Danish',88,'math')
insert into student values(4,'Goyel',97,'math')
insert into student values(5,'Jaspreet',100,'math')
insert into student values(6,'Komal',79,'math')
insert into student values(7,'Ranjit',88,'math')
insert into student values(8,'Himmat',89,'math')
insert into student values(9,'Vivek',84,'math')
insert into student values(10,'Mukesh',80,'math')

select * from student;

select MAX(stud_mark) as max_marks from student
