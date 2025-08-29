MODEL (
  name models.dev_orders,
  kind full,
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

select 
    order_id
    ,customer_id
    ,item
    ,item_category
    ,price
    ,purchase_units
    ,purchase_date
from dbt_adv.orders