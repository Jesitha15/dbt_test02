With 
	stg02 AS (
	select * from `cloudside-academy.dbt_sample_data.annual-enterprise-survey02`),
	one AS 
	(
	select 
	id ,year,industry_code_ANZSIC,
  	industry_name_ANZSIC ,rme_size_grp ,
  	variable,value ,unit,
  	serial_number ,serial_number_1 
  	from stg02
	)
	select * from one
	
