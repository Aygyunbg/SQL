-- Query 1: High-activity staff payment summary per day
-- Table: payment
-- Description: Groups payments by staff and date, excluding zero-amount payments.
-- Returns only dates where a staff member processed more than 450 payments.
-- Results are ordered by total amount descending.
SELECT
staff_id,
DATE(payment_date),
SUM(amount),
Count(*)
FROM payment
WHERE amount != 0
GROUP BY staff_id, DATE(payment_date)
HAVING COUNT(*)>450
ORDER BY SUM(amount) DESC

-- Query 2: Frequent customer payments on specific dates
-- Table: payment
-- Description: Calculates average payment amount and number of transactions per customer
-- on April 28, 29, and 30, 2020. Only includes customers with more than 1 payment per day.
-- Results are ordered by average amount descending.
SELECT
customer_id,
DATE(payment_date),
ROUND(AVG(amount),2) AS avg_amount,
COUNT(*)
FROM payment
WHERE DATE(payment_date) IN ('2020-04-28', '2020-04-29', '2020-04-30')
GROUP BY customer_id, DATE(payment_date)
HAVING COUNT(*)>1
ORDER BY ROUND(AVG(amount),2) DESC