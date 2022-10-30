create table Demo(
   First_Name varchar(50),
   Last_Name varchar(50)
);

insert into Demo values('Rounak','Bhattacharya');
insert into Demo values('Sumit','Bhattacharya');
insert into Demo values('Sonali','Kar');
insert into Demo values('Megha','Gupta');

select *from Demo;

select concat(First_Name,' ',Last_Name) AS FullName from Demo;