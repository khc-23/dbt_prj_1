{% macro mc_table(source_name,table_name,column_name) %}
SELECT {{ column_name }} FROM {{ source(source_name,table_name) }}
WHERE {{ column_name }} IS NOT NULL
LIMIt 1
{%endmacro%}