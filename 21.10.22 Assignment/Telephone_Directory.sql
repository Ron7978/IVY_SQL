create table telephone_directory(
	cit_id int primary key not null,
	cit_name varchar(20),
	cit_tel_num int,
	cit_address varchar(20),
	cit_prof varchar(30)
);

insert into telephone_directory values(1,'Sohail',9923054,'Kolkata','student')
insert into telephone_directory values(2,'Kishore',8797695,'Bihar','Cricketer')
insert into telephone_directory values(3,'Rounak',4239567,'Bhopal','Athletics')
insert into telephone_directory values(4,'Akhil',9748536,'Gaziabad','Gymnasim')
insert into telephone_directory values(5,'Priya',1521632,'Delhi','Doctor')
insert into telephone_directory values(6,'Nikand',1921227,'Lucknow','Lawyer')
insert into telephone_directory values(7,'Pooja',1132520,'Chennai','Teacher')
insert into telephone_directory values(8,'Jasmine',1451280,'Hyderabad','Cricketer')
insert into telephone_directory values(9,'Danish',1121226,'Mumbai','Lawyer')
insert into telephone_directory values(10,'Geetha',1054223,'Pune','Youtuber')
insert into telephone_directory values(11,'Neeelesh',2131260,'Thane','student')
insert into telephone_directory values(12,'Divya',1259342,'Goyel','Doctor')
insert into telephone_directory values(13,'Rohan',1021985,'Kashmir','Nurse')

select * from telephone_directory;

select count(*) from telephone_directory where cit_prof='student';
select count(*) from telephone_directory where cit_prof='Cricketer';