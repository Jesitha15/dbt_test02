WITH
	{{config(materialized='table')}}
	survey as (
	SELECT * FROM {{ref('inter01_annual_enterprise_survey')}} 
	)
	SELECT * FROM survey
