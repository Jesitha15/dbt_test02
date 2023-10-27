with
	{{config(ephemeral)}}

	inter01 as (
	SELECT
        {{ dbt_utils.star(from=ref(`stg_annual_enterprise_survey_01`)) }},
        {{ dbt_utils.star(from=ref(`stg_annual_enterprise_survey_02`)) }}
        FROM
        {{ ref(`stg_annual_enterprise_survey_02`) }} AS t1
	JOIN
        {{ ref(`stg_annual_enterprise_survey_01`) }} AS t2
	ON
        t1.id = t2.id
        WHERE
	t1.year = 2013
	GROUP BY
	table1_id,
	t1.year, 
	t2.Year, 
	t1.industry_code_ANZSIC, 
	t2.Industry_code_NZSIOC,
	t1.industry_name_ANZSIC,
	t1.rme_size_grp,
	t1.variable,
	t1.value,
	t1.unit,
	t1.serial_number,
	t1.serial_number_1,
	table2_id,
	t2.Industry_aggregation_NZSIOC,
	t2.Industry_name_NZSIOC,
	t2.Units,
	t2.Value,
	t2.Industry_code_ANZSIC06,
	t2.serial_number,
	t2.serial_number_1
	)
	select * from inter01
	
