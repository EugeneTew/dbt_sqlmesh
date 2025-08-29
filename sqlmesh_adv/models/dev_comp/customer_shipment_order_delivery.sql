{{
    config(
        materialized = 'table'
    )
}}

select
    ds.tracking_id,
    ds.shipment_id,
    ds.hub_location,
    ds.status_update,
    ds.personnel_id,
    ds.personnel_name,
    ds.phone_number,
    ds.vehicle_type,
    ds.vehicle_plate,
    so.order_id
from {{ ref('delivery_status_eph') }} ds
left join {{ ref('shipment_order') }} so on ds.shipment_id = so.shipment_id