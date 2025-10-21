/* creating my first model to test QUERY_TAG()  */
-- SELECT * FROM {{ source('raw_data1','src_audit') }}
-- select {{ this.name }} AS PATH
{# {% val1 = var('tday', get_current_date() %} #}
{# -- select {{ modules.datetime.date.today().strftime('%Y-%m-%d') }}  #}
{# {{ get_current_date() }}    #}
{# {{ this.name }}  #}

{# variable scope test 
{% set tday = 2025 %}  
{% set val1 = var('tday',1111) %}
{% set val2 = tday %}
{{ log("tday value is: " ~ tday ~"var('tday') value is:"~ val1 ~"tday assigned to val2 value is:"~ val2, info=True) }} 
select 'tday value is: ' || {{tday}} || 'var(\'tday\') value is:'|| {{val1}} ||'tday assigned to val2 value is:'|| {{val2}} as date_val 
-- output 1
-- tday value is: 2025var('tday') value is:1990tday assigned to val2 value is:2025

-- output 2
-- tday value is: 2025var('tday') value is:1111tday assigned to val2 value is:2025

#}
{#
select '{{this.name}}' AS model_name
,'{{this.schema}}' AS model_building_schema
,'{{this.database}}' AS model_building_DB
,'{{target.database}}' AS target_building_DB
,'{{target.schema}}' AS target_building_schema
,'{{target.account}}' AS target_building_account
,'{{target.warehouse}}' AS target_building_WH

#}

select * FROM ({{ mc_table('raw_data1','src_audit','TYPE') }})