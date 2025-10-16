/* creating my first model to test QUERY_TAG()  */
--SELECT * FROM {{ source('raw_data1','src_audit') }}

--select {{ this.name }} AS PATH
{# {% val1 = var('tday', get_current_date() %} #}

select {{ get_current_date() }}