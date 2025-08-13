-- Retrieves the first and last names of all customers
-- whose first name is exactly 'ADAM'
SELECT
first_name,
last_name
FROM customer
WHERE first_name = 'ADAM'