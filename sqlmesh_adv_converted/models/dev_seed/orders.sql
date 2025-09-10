MODEL (
  name sqlmesh_adv.orders,
  kind SEED (
    path '$root/seeds/orders.csv'
  ),
  columns (
    order_id INT
    ,customer_id INT
    ,item VARCHAR
    ,item_category VARCHAR
    ,price FLOAT
    ,purchase_units INT
    ,purchase_date DATE
  )
);