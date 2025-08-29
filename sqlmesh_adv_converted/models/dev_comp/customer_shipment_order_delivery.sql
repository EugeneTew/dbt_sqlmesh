MODEL (
  name models.customer_shipment_order_delivery,
  kind FULL
);

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
from models.delivery_status_eph ds
left join models.shipment_order so on ds.shipment_id = so.shipment_id