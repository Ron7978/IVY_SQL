create table Empl(
	emp_id int,
	emp_name varchar(20),
	emp_lang varchar(20),
	base_loc varchar(20)
);

insert into Empl values(101,'Ajit','C#','Delhi')
insert into Empl values(102,'Danish','C++','Baroda')
insert into Empl values(103,'Samar','C#','Hyderabad')
insert into Empl values(104,'Rounak','C','Chennai')
insert into Empl values(105,'Sonali','Python','Bangalore')
insert into Empl values(106,'Geeta','C#','Hyderabad')

select * from Empl


CREATE OR ALTER PROCEDURE proc_01 @lang1 varchar(20), @loc1 varchar(20)
AS
BEGIN
	SELECT * from Empl WHERE emp_lang=@lang1 and base_loc=@loc1
END

EXEC proc_01 @lang1='C#',@loc1='Hyderabad'