MODEL (
  name models.dev_shipment,
  kind FULL,
  -- columns (
  --   shipment_id INT
  --   ,order_id INT
  --   ,shipping_provider VARCHAR
  --   ,shipment_date DATE
  --   ,status VARCHAR
  -- )
);

select
    shipment_id
    ,order_id
    ,shipping_provider
    ,shipment_date
    ,status
from sqlmesh_adv.shipment