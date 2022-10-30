create table city (
	city_code int primary key,
	city_name varchar(20)
);

insert into city values(101,'Hyderabad');
insert into city values(102,'Pune');
insert into city values(103,'Kolkata');
insert into city values(104,'Mumbai');
insert into city values(105,'Delhi');
insert into city values(106,'Bihar');

select * from city

select city_code,substring(city_name,1,3) from city
