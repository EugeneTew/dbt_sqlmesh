MODEL (
  name sqlmesh_adv.delivery_man,
  kind SEED (
    path '$root/seeds/delivery_man.csv'
  ),
  columns (
    personnel_id INT
    ,personnel_name VARCHAR
    ,phone_number VARCHAR
    ,vehicle_type VARCHAR
    ,vehicle_plate VARCHAR
  )
);