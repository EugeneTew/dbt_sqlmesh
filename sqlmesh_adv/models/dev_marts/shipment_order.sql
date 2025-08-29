{{
  config(
    materialized = 'table'
  )
}}

select
    o.order_id,
    s.shipment_id,
    s.shipping_provider,
    s.shipment_date,
    o.item,
    o.item_category,
    o.purchase_units
from {{ ref('dev_orders') }} o
left join {{ ref('dev_shipment') }} s on o.order_id = s.order_id