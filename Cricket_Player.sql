create table player(
	country_code int,
	country_name nvarchar(20),
	player_name nvarchar(20),
	primary key(country_name, player_name)
);

insert into player values(1920,'India','MS Dhoni');
insert into player values(1920,'India','Virat Kohli');
insert into player values(1920,'India','Zaheer Kahan');

insert into player values(1922,'Sri Lanka','Kumar Sangakara');


insert into player values(1925,'Australia','Ricky Ponting');
insert into player values(1925,'Australia','Michel Clark');

insert into player values(1922,'Sri Lanka','Afridi')
insert into player values(1628,'Bangladesh','Soumya Sarkar')
insert into player values(1629,'England','Jos Buttler')
insert into player values(1621,'India','Yuvraj')
insert into player values(1922,'Sri Lanks','Michel clark')


insert into player values (1920,'India',' ')


insert into player values (1920, null ,'Virat Kohli')
insert into player values (1920,'India ',null)

select * from player

drop table player
