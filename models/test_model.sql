/* creating my first model to test QUERY_TAG()  */
-- SELECT * FROM {{ source('raw_data1','src_audit') }}
-- select {{ this.name }} AS PATH
{# {% val1 = var('tday', get_current_date() %} #}
{# -- select {{ modules.datetime.date.today().strftime('%Y-%m-%d') }}  #}
{# {{ get_current_date() }}    #}
{# {{ this.name }}  #}
{# {% set tday = "2025-10-16" %}  #}
{% set val1 = var('tday') %} 
{{ log("tday value is: " ~ tday ~'----'~ val1, info=True) }} 
select '{{tday}}' || '----'|| '{{val1}}' as date_val 
-- SELECT 1
