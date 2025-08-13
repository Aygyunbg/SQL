-- Counts the total number of payments made by the customer with ID 100
SELECT
COUNT(*)
FROM payment
WHERE customer_id = 100;

-- Retrieves the first and last names of all customers
-- whose first name is exactly 'ERICA'
SELECT
first_name,
last_name
FROM customer
WHERE first_name = 'ERICA'