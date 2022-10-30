create table student(
	s_id int primary key, 
	s_name nvarchar(20) not null, 
	s_course nvarchar(20)
);

insert into student values(1001,'Akhil','Physics');
insert into student values(1002,'Akhil','Maths');
insert into student values(1003,'Akhil','History');

insert into student values(1004,'Sam','Chemistry');
insert into student values(1005,'Sam','Maths');
insert into student values(1006,'Sam','History');

insert into student values(1007,'Danish','Physics');
insert into student values(1008,'Danish','Maths');
insert into student values(1009,'Danish','Political Science');

insert into student values(1010,'Pranjal','Biology');
insert into student values(1011,'Pranjal','Physics');
insert into student values(1012,'Pranjal','Chemistry');


select * from student

select s_name
from student
where s_course  not in ('Maths','Phys')
group by s_name having count(distinct s_course) >= 2

drop table student