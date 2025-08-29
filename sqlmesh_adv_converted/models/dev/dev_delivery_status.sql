MODEL (
  name models.dev_delivery_status,
  kind FULL,
  columns (
    tracking_id INT
    ,shipment_id INT
    ,hub_location VARCHAR
    ,status_update VARCHAR
    ,timestamp TIMESTAMP
    ,personnel_id INT
  )
);

select
    tracking_id
    ,shipment_id
    ,hub_location
    ,status_update
    ,timestamp
    ,personnel_id
from dbt_adv.delivery_status