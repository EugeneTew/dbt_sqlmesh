{{
  config(
    materialized = 'table'
  )
}}

select
    co.order_id,
    co.customer_id,
    co.customer_name,
    co.item,
    co.price,
    co.purchase_units,
    co.total_price,
    co.purchase_date,
    sos.ticket_id,
    sos.issue_type,
    sos.ticket_description,
    sos.date_created,
    sos.shipment_id,
    sos.shipping_provider,
    sos.shipment_date,
    sos.item_category
from {{ ref('customer_order') }} co
left join {{ ref('shipment_order_support') }} sos on sos.order_id = co.order_id and sos.customer_id = co.customer_id