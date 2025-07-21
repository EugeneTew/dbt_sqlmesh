select
    order_id,
    customer_id,
    product_id,
    order_date,
    quantity
from {{ source('raw_data', 'raw_orders') }}