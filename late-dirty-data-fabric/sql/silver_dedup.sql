WITH ranked_data AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY order_id
               ORDER BY updated_at DESC
           ) AS rn
    FROM bronze_sales
)
SELECT
    order_id,
    order_date,
    customer_id,
    CASE 
        WHEN amount < 0 THEN NULL
        ELSE amount
    END AS amount,
    updated_at
FROM ranked_data
WHERE rn = 1;
