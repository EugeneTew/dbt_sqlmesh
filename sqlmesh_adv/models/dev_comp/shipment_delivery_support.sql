{{
    config(
        materialized = 'table'
    )
}}

select
    csod.tracking_id,
    csod.shipment_id,
    csod.hub_location,
    csod.status_update,
    csod.personnel_id,
    csod.personnel_name,
    csod.phone_number,
    csod.vehicle_type,
    csod.vehicle_plate,
    csod.order_id,
    csos.customer_id,
    csos.customer_name,
    csos.item,
    csos.price,
    csos.purchase_units,
    csos.total_price,
    csos.purchase_date,
    csos.ticket_id,
    csos.issue_type,
    csos.ticket_description,
    csos.date_created,
    csos.shipping_provider,
    csos.shipment_date,
    csos.item_category
from {{ ref('customer_shipment_order_delivery') }} csod
left join {{ ref('customer_shipment_order_support') }} csos on csod.shipment_id = csos.shipment_id and csod.order_id = csos.order_id