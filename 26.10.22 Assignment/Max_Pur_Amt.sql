create table purchase(
	order_id int,
	order_amt int,
	order_date date
);

insert into purchase values(101,20000,'01-05-2022')
insert into purchase values(102,300000,'05-01-2022')
insert into purchase values(103,20000,'07-08-2022')
insert into purchase values(104,500000,'10-09-2022')
insert into purchase values(105,10000,'11-10-2022')
insert into purchase values(106,600000,'01-08-2021')
insert into purchase values(107,700000,'12-10-2021')
insert into purchase values(108,400000,'07-01-2022')

select * from purchase

select max(order_amt) from purchase
where order_amt  in (select order_amt from purchase where order_date>='12-10-2021' group by order_amt)