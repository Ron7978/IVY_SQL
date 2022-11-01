create table stud_info(
	s_id int primary key,
	s_name varchar(20),
	s_age int,
	s_sex varchar(10),
	s_course varchar(20),
	year_of_study int
);

insert into stud_info values(101,'Rounak',21,'M','ECE',4)
insert into stud_info values(102,'Amit',22,'M','EEE',2)
insert into stud_info values(103,'Sonali',23,'F','BIO-TECH',1)
insert into stud_info values(104,'Akhik',22,'M','CSE',3)
insert into stud_info values(105,'Sravani',21,'F','ME',2)
insert into stud_info values(106,'Danish',22,'M','CSE',1)
insert into stud_info values(107,'Jai',24,'M','ECE',4)
insert into stud_info values(108,'Komal',25,'F','IT',1)

select* from stud_info

CREATE OR ALTER PROCEDURE p_02 @year int 
AS
BEGIN 
SELECT * from stud_info where year_of_study=@year
END

EXEC p_02 @year=1