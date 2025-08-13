-- Query: Total and maximum payment amount per customer
-- Table: payment
-- Description: Groups all payments by customer ID, calculating the total and highest 
-- single payment for each customer. Results are ordered by total amount spent in descending order.
SELECT
customer_id,
SUM(amount),
Max(amount)
From payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC