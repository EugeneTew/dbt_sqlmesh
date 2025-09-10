MODEL (
  name sqlmesh_adv.support_ticket,
  kind SEED (
    path '$root/seeds/support_ticket.csv'
  ),
  columns (
    ticket_id INT
    ,customer_id INT
    ,order_id INT
    ,issue_type VARCHAR
    ,ticket_description VARCHAR
    ,date_created DATE
    ,status VARCHAR
  )
);