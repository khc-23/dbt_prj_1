
{{ config(materialized='incremental',
    on_schema_change='fail') }} 

select * from PUBLIC.INC1 WHERE COL3 <= DATEADD(DAY,10,current_timestamp)

{% if is_incremental() %}  -- this block is adding extra AND condition to the above select query 

AND COL3 > (select NVL(MAX(COL3),'1970-01-01 00:00:00.000') from {{this}})

{% endif %}