MODEL (
  name models.dev_delivery_man,
  kind FULL,
  columns (
    personnel_id INT
    ,personnel_name VARCHAR
    ,phone_number VARCHAR
    ,vehicle_type VARCHAR
    ,vehicle_plate VARCHAR
  )
);

select 
    personnel_id
    ,personnel_name
    ,phone_number
    ,vehicle_type
    ,vehicle_plate
from dbt_adv.delivery_man