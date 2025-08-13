-- Query: Summary statistics for replacement costs
-- Table: film
-- Description: Retrieves the minimum, maximum, average (rounded to 2 decimals), 
-- and total replacement cost for all films in the database.
SELECT
MIN(replacement_cost),
MAX(replacement_cost),
ROUND(AVG(replacement_cost),2) AS AVG,
SUM(replacement_cost)
FROM film