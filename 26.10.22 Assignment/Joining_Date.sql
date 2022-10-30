create table new_empl(
s_id int primary key,
s_name varchar(20),
s_dep varchar(20),
Join_date date
)

insert into new_empl values(101,'Ronit','CSE','02-01-2020')
insert into new_empl values(102,'Rounak','ECE','01-01-2021')
insert into new_empl values(103,'Mohit','MEC','01-15-2022')
insert into new_empl values(104,'Amit','CSE','02-01-2020')
insert into new_empl values(105,'Rajiv','CE','01-01-2020')
insert into new_empl values(106,'Pooja','EEE','02-01-2019')
insert into new_empl values(107,'Neelesh','ECE','08-10-2020')

select * from new_empl

select * from new_empl where Join_date>'02-29-2020'

drop table new_empl
