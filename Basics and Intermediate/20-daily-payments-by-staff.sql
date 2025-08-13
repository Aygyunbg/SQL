-- Query: Daily total payments and transaction count by staff member
-- Table: payment
-- Description: Groups payments by staff and date. Calculates the total amount and 
-- number of transactions per staff member for each day. Results are ordered by total amount descending.
SELECT
staff_id,
DATE(payment_date),
SUM(amount),
Count(*)
FROM payment
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC