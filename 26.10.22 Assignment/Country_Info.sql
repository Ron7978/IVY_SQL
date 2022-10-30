create table salesman(
	sales_id int primary key,
	sales_name varchar(20),
	city_name varchar(20),
	state_name varchar(20),
);

insert into salesman values(101,'Rohan','Udaipur','Rajasthan');
insert into salesman values(102,'Sonali','Raukela','Odissa');
insert into salesman values(103,'Sarbojeet','Kolkata','West Bengal');
insert into salesman values(104,'Mukesh','Jaipur','Rajasthan');
insert into salesman values(105,'Nilesh','Lucknow','Uttar Pradesh');
insert into salesman values(106,'Akshat','Surat','Gujarat');
insert into salesman values(107,'Amit','Chennai','Tamil Nadu');

create table country(
	cont_id int primary key,
	grade varchar(20),
	counrty_name varchar(20),
	sales_id int

	foreign key(sales_id) references salesman(sales_id)	
);

insert into country values(10001,'A','Dubai',101);	
insert into country values(10002,'B','India',102);	
insert into country values(10003,'C','Kenya',103);	
insert into country values(10004,'B','Sudan',104);	
insert into country values(10005,'D','India',105);
insert into country values(10005,'D','Iran',106);
insert into country values(10005,'D','Brazil',107);

select* from country

--USING JOINS:

select country.cont_id, salesman.sales_name, salesman.city_name,country.counrty_name from salesman 	
INNER JOIN country	
ON salesman.sales_id = country.sales_id

select country.cont_id, salesman.sales_name, salesman.city_name,country.counrty_name from salesman 	
FULL OUTER JOIN country	
ON salesman.sales_id = country.sales_id
