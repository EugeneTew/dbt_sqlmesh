MODEL (
  name models.shipment_delivery_support,
  kind FULL
);

SELECT
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
FROM models.customer_shipment_order_delivery AS csod
LEFT JOIN models.customer_shipment_order_support AS csos
  ON csod.shipment_id = csos.shipment_id AND csod.order_id = csos.order_id