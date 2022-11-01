create table stud(
	s_id int primary key,
	s_name varchar (20) not null,
	s_marks int,
	s_course varchar(20)
);

insert into stud values(404,'Rounak',80,'Maths')
insert into stud values(405,'Rounak',75,'Physics')
insert into stud values(406,'Rounak',65,'Chemistry')
insert into stud values(407,'Rounak',70,'English')
insert into stud values(408,'Rounak',77,'CS')

insert into stud values(380,'Samar',85,'Maths')
insert into stud values(381,'Samar',78,'Physics')
insert into stud values(382,'Samar',67,'Chemistry')
insert into stud values(383,'Samar',88,'English')
insert into stud values(384,'Samar',65,'CS')

insert into stud values(140,'Sonali',65,'Maths')
insert into stud values(141,'Sonali',75,'Physics')
insert into stud values(142,'Sonali',75,'Chemistry')
insert into stud values(143,'Sonali',80,'English')
insert into stud values(144,'Sonali',67,'CS')

insert into stud values(265,'Prince',82,'Maths')
insert into stud values(266,'Prince',77,'Physics')
insert into stud values(267,'Prince',75,'Chemistry')
insert into stud values(268,'Prince',75,'English')
insert into stud values(269,'Prince',67,'CS')

insert into stud values(390,'Kapil',72,'Maths')
insert into stud values(391,'Kapil',67,'Physics')
insert into stud values(392,'Kapil',65,'Chemistry')
insert into stud values(393,'Kapil',75,'English')
insert into stud values(394,'Kapil',60,'CS')

insert into stud values(435,'Tarun',84,'Maths')
insert into stud values(436,'Tarun',77,'Physics')
insert into stud values(437,'Tarun',65,'Chemistry')
insert into stud values(438,'Tarun',80,'English')
insert into stud values(439,'Tarun',78,'CS')


select* from stud

drop table stud


CREATE OR ALTER PROCEDURE p_3 AS

DECLARE @result table (Name varchar(20),Total_marks int)

insert into @result select s_name,SUM(s_marks) AS marks from stud group by s_name order by marks DESC
SELECT * from @result

EXEC p_3