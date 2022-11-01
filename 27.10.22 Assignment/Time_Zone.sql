create table time_zone(
	country_code int primary key, 
	country_name varchar(20)
);

insert into time_zone values(121,'US')
insert into time_zone values(152,'UK')
insert into time_zone values(303,'Dubai')
insert into time_zone values(604,'Singapore')

SELECT* FROM time_zone

CREATE OR ALTER FUNCTION timezone (@c_name varchar(20))
RETURNS varchar(20) AS
BEGIN
DECLARE @res AS varchar(20)
	IF @c_name='US'
		set @res = '4 am'

	ELSE IF @c_name='Dubai'
		set @res = '5 am'

	ELSE IF @c_name='UK'
		set @res = '6 am'

	ELSE IF @c_name='Singapore'
		set @res = '7 am'
	ELSE
		set @res = 'other time'

	RETURN @res
END

select dbo.timezone('US')
select dbo.timezone('Singapore')