{{
    config(
        materialized = 'ephemeral'
    )
}}

select 
    ds.tracking_id,
    ds.shipment_id,
    ds.hub_location,
    ds.status_update,
    ds.personnel_id,
    dm.personnel_name,
    dm.phone_number,
    dm.vehicle_type,
    dm.vehicle_plate 
from {{ ref('dev_delivery_status') }} ds 
left join {{ ref('dev_delivery_man') }} dm on ds.personnel_id = dm.personnel_id