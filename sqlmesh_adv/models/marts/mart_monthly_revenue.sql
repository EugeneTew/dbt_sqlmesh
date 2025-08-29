{{
  config(
    materialized = 'incremental',
    unique_key = 'year_month'
  )
}}

select
    date_trunc('month', order_date)::date as year_month,
    sum(total_price) as monthly_revenue
from {{ ref('fct_orders') }}

{% if is_incremental() %}

  -- this filter will only be applied on an incremental run
  where order_date > (select max(year_month) from {{ this }})

{% endif %}

group by 1