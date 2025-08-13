-- Returns all payments where the amount is exactly 10.99 AND the customer_id is 426.
-- The AND condition requires both comparisons to be true.
SELECT
*
FROM payment
WHERE amount = 10.99
AND customer_id = 426

-- Returns all payments where the amount is either 10.99 OR 9.99.
-- The OR condition means only one of the values needs to match.
SELECT
*
FROM payment
WHERE amount = 10.99
OR amount = 9.99

-- Returns all payments where:
-- (the amount is either 10.99 OR 9.99) AND the customer_id is 426.
-- Important: AND has higher precedence than OR in SQL.
-- That means, without parentheses, SQL would evaluate the AND condition first.
-- Parentheses are used here to force the OR condition to be evaluated first.
SELECT
*
FROM payment
WHERE (amount = 10.99
OR amount = 9.99)
AND customer_id = 426