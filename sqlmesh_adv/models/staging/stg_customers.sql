select
    customer_id,
    first_name,
    last_name,
    signup_date
from {{ source('raw_data', 'raw_customers') }}