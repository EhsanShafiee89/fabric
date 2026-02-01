MERGE INTO fact_sales AS target
USING silver_sales AS source
ON target.order_id = source.order_id

WHEN MATCHED AND source.updated_at > target.updated_at THEN
UPDATE SET
    target.amount = source.amount,
    target.updated_at = source.updated_at

WHEN NOT MATCHED THEN
INSERT (order_id, order_date, customer_id, amount, updated_at)
VALUES (
    source.order_id,
    source.order_date,
    source.customer_id,
    source.amount,
    source.updated_at
);
