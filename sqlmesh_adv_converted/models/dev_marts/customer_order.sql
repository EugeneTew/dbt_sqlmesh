MODEL (
  name models.customer_order,
  kind FULL
);

select
    o.order_id,
    o.customer_id,
    c.customer_name,
    o.price,
    o.item,
    o.purchase_units,
    (o.price * o.purchase_units) as total_price,
    o.purchase_date
from models.dev_customers c
left join models.dev_orders o on o.customer_id = c.customer_id