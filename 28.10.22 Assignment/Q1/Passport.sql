create table pass(
no_var int  primary key,
name_var varchar(50),
expiry_var date,
validity_var int,
channel_var varchar(50)
)
-- procedure sp_passport

create or alter procedure pass_port @pass_no int,@candidate_name varchar(50),
@pass_expiry date,@pass_validity int,@applied_channel varchar(50) as

insert into pass values(@pass_no,@candidate_name,@pass_expiry,@pass_validity,@applied_channel)



select * from pass
exec pass_port