MODEL (
  name models.delivery_status_eph,
  kind EMBEDDED
);

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
from models.dev_delivery_status ds 
left join models.dev_delivery_man dm on ds.personnel_id = dm.personnel_id