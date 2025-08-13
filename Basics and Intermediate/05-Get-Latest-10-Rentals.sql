-- Retrieves all columns from the rental table
-- Orders the results by rental_date in descending order (latest first)
-- Limits the output to the 10 most recent rentals
SELECT
*
FROM rental
ORDER BY rental_date DESC
LIMIT 10