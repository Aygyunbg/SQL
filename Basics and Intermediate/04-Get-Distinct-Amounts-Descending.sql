-- Retrieves unique payment amounts from the payment table
-- DISTINCT ensures duplicate amounts are removed
-- Results are sorted in descending order by amount
SELECT DISTINCT
amount
FROM payment
ORDER BY amount DESC