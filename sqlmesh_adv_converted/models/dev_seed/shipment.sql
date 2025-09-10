MODEL (
  name sqlmesh_adv.shipment,
  kind SEED (
    path '$root/seeds/shipment.csv'
  ),
  columns (
    shipment_id INT
    ,order_id INT
    ,shipping_provider VARCHAR
    ,shipment_date DATE
    ,status VARCHAR
  )
);