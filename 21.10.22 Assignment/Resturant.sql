create table customer(
	cust_id int primary key not null,
	cust_name nvarchar(20),
	cust_address nvarchar(20),
	cust_telephone bigint,
	cust_emai nvarchar(20)
);

insert into customer values(1,'Rounak','Kondapur','12342222','RO232@gmail.com')
insert into customer values(2,'Danish','Anna Nagar','1235435','DA132@gmail.com')
insert into customer values(3,'Shivam','T Nagar','1235435','SH123@gmail.com')
insert into customer values(4,'Avinash','Patna','467672222','AVgcj232@gmail.com')
insert into customer values(5,'Sonali','Rourkela','687642222','SO12@gmail.com')
insert into customer values(6,'Nikhil','Delhi','6756882222','NI122@gmail.com')
insert into customer values(7,'Lokesh','Anna Nagar','12342222','LO32@gmail.com')
insert into customer values(8,'Jaspreet','Jaipur','12342222','JA1232@gmail.com')
insert into customer values(9,'Mortal','Agartal','2386323','MO632@gmail.com')
insert into customer values(10,'Saurav','Varanasi','89757763','SA2232@gmail.com')



create table items(
	item_id int primary key not null,
	item_name varchar(20),
	item_price int,
	customer_id int not null,
	foreign key(customer_id) references customer(cust_id)
);

insert into items values(1,'Butter Chicken',120,1)
insert into items values(2,'Masala Mutton',120,1)
insert into items values(3,'Pizza Mania',120,2)
insert into items values(4,'Chicken Hamburger',120,1)
insert into items values(5,'Mutton Hot dog',120,3)
insert into items values(6,'Veg Sandwich',120,7)
insert into items values(7,'Milk shake',120,8)
insert into items values(8,'Soft drink',120,10)
insert into items values(9,'Chicken 65',120,9)
insert into items values(10,'Chicken Biriyani',120,10)

select * from items;

create table orders(
	order_id int primary key not null,
	customer_id int not null,
	order_date date
	foreign key(customer_id) references customer(cust_id)
);

insert into orders values(1,2,'2016/01/20 14:08:25')
insert into orders values(2,3,'2016/01/20 14:08:25')
insert into orders values(3,5,'2016/01/20 14:08:25')
insert into orders values(4,3,'2016/01/20 14:08:25')
insert into orders values(5,9,'2016/01/20 14:08:25')
insert into orders values(6,7,'2016/01/20 14:08:25')
insert into orders values(7,6,'2016/01/20 14:08:25')
insert into orders values(8,4,'2016/01/20 14:08:25')
insert into orders values(9,9,'2016/01/20 14:08:25')
insert into orders values(10,1,'2016/01/20 14:08:25')



create table order_item(
	order_item_id int primary key not null,
	order_id int not null,
	item_id int not null,
	customer_id int not null,
	product_quantity varchar(20),
	foreign key(customer_id) references customer(cust_id)
);

insert into order_item values(1,11,10,1,'good')
insert into order_item values(2,15,10,4,'not good')
insert into order_item values(3,12,10,6,'bad')
insert into order_item values(4,14,10,3,'too good')
insert into order_item values(5,17,10,9,'bad')
insert into order_item values(6,17,10,6,'good')
insert into order_item values(7,18,10,10,'bad')
insert into order_item values(8,10,10,5,'bad')
insert into order_item values(9,13,10,4,'too good')
insert into order_item values(10,12,10,3,'bad')

select * from customer;
select * from orders;
select * from order_item;

