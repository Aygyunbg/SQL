-- Retrieves all payment records where the amount is greater than 10
-- Results are ordered in descending order by amount
SELECT
*
FROM payment
WHERE amount > 10
ORDER BY amount DESC