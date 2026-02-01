SELECT *
FROM silver_sales
WHERE amount IS NULL
   OR customer_id IS NULL;
