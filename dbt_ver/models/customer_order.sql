SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) as order_count,
    SUM(o.price) as total_spend
FROM {{ source('raw', 'customers') }} c
LEFT JOIN {{ source('raw', 'orders') }} o ON c.customer_id = o.customer_id
GROUP BY 1,2