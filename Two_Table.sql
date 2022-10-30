create table college1_student(
	stud_name1 varchar(20), 
	age1 int, 
	study_course1 varchar(20)
);

insert into college1_student values('Rounak',23,'Maths');
insert into college1_student values('Anand',24,'Physics');
insert into college1_student values('Sonali',19,'Maths');

insert into college1_student values('Rohan',25,'Maths');
insert into college1_student values('Akash',23,'Chemistry');
insert into college1_student values('Rounak',23,'History');

create table college2_student(
	stud_name2 varchar(20), 
	age2 int, 
	study_course2 varchar(20)
);

insert into college2_student values('Vicky',25,'Maths');
insert into college2_student values('Yuvraj',22,'Geography');
insert into college2_student values('Bhuvi',23,'Commerce');

insert into college2_student values('sonam',21,'History');
insert into college2_student values('Nisha',24,'Maths');
insert into college2_student values('Pihu',21,'Physics');

select * from college1_student
select * from college2_student

drop table college1_student
drop table college2_student

select college1_student.stud_name1 as Full_Name,college1_student.age1 as Age,college1_student.study_course1 as Subject from college1_student where college1_student.study_course1='Maths' and college1_student.age1>21
Union
select college2_student.stud_name2 as Full_Name,college2_student.age2 as Age,college2_student.study_course2 as subject from college2_student where college2_student.study_course2='Maths' and college2_student.age2>21
