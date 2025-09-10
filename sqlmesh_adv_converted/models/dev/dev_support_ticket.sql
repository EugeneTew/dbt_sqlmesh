MODEL (
  name models.dev_support_ticket,
  kind FULL,
  -- columns (
  --   ticket_id INT
  --   ,customer_id INT
  --   ,order_id INT
  --   ,issue_type VARCHAR
  --   ,ticket_description VARCHAR
  --   ,date_created DATE
  --   ,status VARCHAR
  -- )
);

select
    ticket_id
    ,customer_id
    ,order_id
    ,issue_type
    ,ticket_description
    ,date_created
    ,status
from sqlmesh_adv.support_ticket