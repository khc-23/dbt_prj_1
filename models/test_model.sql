/* creating my first model to test QUERY_TAG()  */
-- SELECT * FROM {{ source('raw_data1','src_audit') }}
-- select {{ this.name }} AS PATH
{# {% val1 = var('tday', get_current_date() %} #}
{# -- select {{ modules.datetime.date.today().strftime('%Y-%m-%d') }}  #}
{# {{ get_current_date() }}    #}
{# {{ this.name }}  #}

{% set tday = 2025 %}  
{% set val1 = var('tday',1111) %}
{% set val2 = tday %}
{{ log("tday value is: " ~ tday ~"var('tday') value is:"~ val1 ~"tday assigned to val2 value is:"~ val2, info=True) }} 
select 'tday value is: ' || {{tday}} || 'var(\'tday\') value is:'|| {{val1}} ||'tday assigned to val2 value is:'|| {{val2}} as date_val 
-- out put is below
-- tday value is: 2025var('tday') value is:1990tday assigned to val2 value is:2025