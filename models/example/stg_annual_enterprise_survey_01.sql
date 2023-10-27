With
	stg01 AS (
	select * from `cloudside-academy.dbt_sample_data.annual-enterprise-survey02`)
	one AS
	(
	select 
	id AS table2_id,Year AS table2_year,Industry_aggregation_NZSIOC AS table2_industry_aggregation,
	Industry_code_NZSIOC AS table2_industry_code,Industry_name_NZSIOC AS table2_industry_name,
	Units AS table2_units,Value AS table2_value,Industry_code_ANZSIC06 AS table2_industry_code_ANZSIC06,
	serial_number AS table2_serial_number,serial_number_1 AS table2_serial_number_1
	from stg01
	)
	select * form one
