MODEL (
  name analytics.customer_details, -- 1. The name for the new table/view you are creating. format: [schema].[table name]
  kind FULL,                        -- 2. Materializes as a table that is fully replaced on each run.
  dialect postgres,                 -- Best practice to specify the dialect.
  cron '@daily',                    -- (Optional) A schedule for the model run.
  owner 'data_analyst'              -- (Optional) The owner of the model.
);

SELECT
    c.customer_id,
    c.customer_name,
    c.gender,
    c.birthday,
    c.email_add,
    COUNT(o.order_id) AS order_count,
    SUM(o.price) AS total_spend
FROM raw.customers AS c -- 3. Replaced {{ source('raw', 'customers') }}
LEFT JOIN raw.orders AS o ON c.customer_id = o.customer_id
GROUP BY
    c.customer_id,
    c.customer_name,
    c.gender,
    c.birthday,
    c.email_add;