-- Query: Retrieve total and maximum payment amounts per customer
-- Table: payment
-- Description: Groups payments by customer_id, calculating the total and 
-- highest single payment per customer. Results are ordered by total amount paid (descending).
SELECT
customer_id,
SUM(amount),
Max(amount)
From payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC