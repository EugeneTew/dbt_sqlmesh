MODEL (
  name models.dev_customers,
  kind INCREMENTAL_BY_TIME_RANGE(time_column register_date),
  grains customer_id,
  -- columns (
    -- customer_id INT
  --   ,customer_name VARCHAR
  --   ,email_add VARCHAR
  --   ,gender VARCHAR
  --   ,birthday DATE
  --   ,register_date DATE
  -- )
);

select
    customer_id
    ,customer_name
    ,email_add
    ,gender
    ,birthday
    ,register_date
from sqlmesh_adv.customers