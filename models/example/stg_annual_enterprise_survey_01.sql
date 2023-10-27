With
	stg01 AS (
	select * from `cloudside-academy.dbt_sample_data.annual-enterprise-survey02`),
	one AS
	(
	select 
	id ,Year,Industry_aggregation_NZSIOC ,
	Industry_code_NZSIOC,Industry_name_NZSIOC ,
	Units ,Value ,Industry_code_ANZSIC06 ,
	serial_number ,serial_number_1 
	from stg01
	)
	select * form one
