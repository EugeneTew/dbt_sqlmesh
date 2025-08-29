MODEL (
  name models.shipment_order_support,
  kind EMBEDDED
);

select
    so.ticket_id,
    so.customer_id,
    so.issue_type,
    so.ticket_description,
    so.date_created,
    st.order_id,
    st.shipment_id,
    st.shipping_provider,
    st.shipment_date,
    st.item,
    st.item_category,
    st.purchase_units
from models.dev_support_ticket so
left join models.shipment_order st on so.order_id = st.order_id