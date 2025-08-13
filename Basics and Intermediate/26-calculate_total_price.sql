-- SQL Query: Calculate total price for each order with conditional discount
-- If quantity > 1, apply a 10% discount on product total (excluding shipping)
-- The total_price includes the shipping fee in all cases
SELECT
order_id,
product_id,
quantity,
unit_price,
CASE
WHEN quantity > 1 THEN (quantity * unit_price * 0.9) + shipping_fee
ELSE (quantity * unit_price) + shipping_fee
END AS total_price
FROM sales_orders