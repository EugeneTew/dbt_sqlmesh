{{
  config(
    materialized = 'ephemeral'
  )
}}

select
    o.order_id,
    o.customer_id,
    p.product_id,
    p.price,
    o.quantity,
    (p.price * o.quantity) as total_price,
    o.order_date
from {{ ref('stg_orders') }} o
left join {{ ref('stg_products') }} p on o.product_id = p.product_id