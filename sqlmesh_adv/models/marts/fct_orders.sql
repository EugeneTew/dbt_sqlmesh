{{
  config(
    materialized = 'table'
  )
}}

select
    oi.order_id,
    c.customer_id,
    c.first_name,
    oi.product_id,
    oi.total_price,
    oi.order_date
from {{ ref('int_order_items') }} oi
left join {{ ref('stg_customers') }} c on oi.customer_id = c.customer_id