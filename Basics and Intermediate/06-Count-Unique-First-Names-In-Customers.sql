-- Counts the number of unique first names in the customer table
-- DISTINCT ensures that duplicate first names are only counted once
SELECT
COUNT(DISTINCT first_name)
FROM customer