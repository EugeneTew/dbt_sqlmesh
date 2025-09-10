MODEL (
  name sqlmesh_adv.delivery_status,
  kind SEED (
    path '$root/seeds/delivery_status.csv'
  ),
  columns (
    tracking_id INT
    ,shipment_id INT
    ,hub_location VARCHAR
    ,status_update VARCHAR
    ,timestamp TIMESTAMP
    ,personnel_id INT
  )
);