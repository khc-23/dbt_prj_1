/* creating my first model to test QUERY_TAG()  */
{# {{ config(
    database="SNOWFLAKE_LEARNING_DB",
    schema="PUBLIC"
   ) }}
#}
/*  if we specify db and schemas as above then dbt ignores dbt_project.yml config details of snowflake DB,schema and takes these as priority and creates new schema in snowflake if it doesn't exist.
*/
--SELECT * FROM "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER"
SELECT * FROM {{ source('raw_data2','customer') }}
