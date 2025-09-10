MODEL (
  name sqlmesh_adv.customers,
  kind SEED (
    path '$root/seeds/customers.csv'
  ),
  columns (
    customer_id INT
    ,customer_name VARCHAR
    ,email_add VARCHAR
    ,gender VARCHAR
    ,birthday DATE
    ,register_date DATE
  )
);