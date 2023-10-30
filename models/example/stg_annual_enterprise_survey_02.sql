With 
	stg02 AS (
	select * from `cloudside-academy.dbt_sample_data.annual-enterprise-survey02`)
	(
	select 
	id AS table1_id,year AS table1_year,industry_code_ANZSIC AS table1_industry_code,
  	industry_name_ANZSIC AS table1_industry_name,rme_size_grp AS table1_rme_size_grp,
  	variable AS table1_variable,value AS table1_value,unit AS table1_unit,
  	serial_number AS table1_serial_number,serial_number_1 AS table1_serial_number_1 
  	from stg02
	)
	
