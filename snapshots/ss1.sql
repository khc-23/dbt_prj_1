{% snapshot ss1_DS1 %}
  {{ config(
      target_schema = 'DBT_KHC23',
      strategy      = 'timestamp',
      unique_key    = ['COL1','COL2'],  
      updated_at    = 'COL3'
  ) }}

  select * from {{ source('raw_data3', 'DS1') }}
{% endsnapshot %}