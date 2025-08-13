-- Query: Daily total payments and transaction count per staff member
-- Table: payment
-- Description: Groups payments by staff ID and payment date, calculating the total 
-- amount collected and number of transactions for each staff member per day.
-- Results are ordered by total amount in descending order.
SELECT
staff_id,
DATE(payment_date),
SUM(amount),
Count(*)
FROM payment
GROUP BY staff_id, DATE(payment_date)
ORDER BY SUM(amount) DESC