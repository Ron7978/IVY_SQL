create table info(
Id int not null primary key,
Horror varchar(50),
Kids varchar(50)
)

insert into info values(101,'Raaz','Inside Out')
insert into info values(102,'PHENOMENA','The Mitchells Vs. the Machines')
insert into info values(103,'OCULUS ','Ratatouille')
insert into info values(104,' Tumbbad','The Nightmare Before Christmas')
insert into info values(105,'A NIGHTMARE','The Boss Baby ')
insert into info values(106,'1920 ','Despicable Me ')
insert into info values(107,'RAAT','Up')
insert into info values(108,'Darna Mana Hai','Onward ')
insert into info values(109,' Kohraa','Kikis Delivery Service')
insert into info values(110,' Bhoot','The Lion King')
insert into info values(111,'Ek Thi Daayan','Spirit Riding Free')
insert into info values(112,'Shaapit','The Magic School Bus.')
insert into info values(113,'Mahal','Booba')

select * from info

create or alter function display_test1(@input varchar(50))
returns @File table  (Movies_Name varchar(50))as

begin

if @input='horror'
insert into @File select top 5 horror from info

else
insert into @File select top 5 kids from info

return 
end

select * from display_test1('kids')