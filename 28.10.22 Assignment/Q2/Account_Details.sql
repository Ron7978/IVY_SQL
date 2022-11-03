create table cust(
cust_name varchar(50),
cust_Aadhar_number int not null primary key,
)

insert into cust values('Pranjal',1233223);
insert into cust values('Saurav',1233225);
insert into cust values('Rounak',1233224);
insert into cust values('Sonali',1233226);
insert into cust values('Akhil',1233227);
insert into cust values('Lokesh',2433283);
insert into cust values('Vivek',2435223);
insert into cust values('Mukesh',1633223);
insert into cust values('Ram',1733423);
insert into cust values('Soham',1283343);

create table account(
Account_no int not null primary key,
Account_balance int,
Account_opened_date date,
Last_transaction_date date,
Aadhar_number int,
FOREIGN KEY (Aadhar_number) REFERENCES cust(cust_Aadhar_number )
)

insert into account values(122,230000,'2022-01-12','2021-11-12',1233223)
insert into account values(132,890000,'2021-02-12','2021-11-12',1233225)
insert into account values(1234,450000,'2010-04-12','2021-11-12',1233224)
insert into account values(1452,930000,'2011-12-12','2021-11-12',1233226)
insert into account values(1952,670000,'2012-05-12','2021-11-12',1233227)
insert into account values(1672,880000,'2013-07-12','2021-11-12',2433283)
insert into account values(1872,630000,'2015-09-12','2021-11-12',2435223)
insert into account values(7822,900000,'2012-11-12','2021-11-12',1633223)
insert into account values(1982,870000,'2016-10-12','2021-11-12',1733423)
insert into account values(1782,530000,'2018-11-12','2021-11-12',1283343)

select * from cust;
select * from account;
--drop table cust;
--drop table account;


create function display1(@input int)
returns table as

return
select * from account 
inner join cust
on cust_Aadhar_number=Aadhar_number
where account.Account_balance>@input

select * from display(700000)

--INLPF37B1HY\\MSSQLSERVER1