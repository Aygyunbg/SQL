-- Query: Count payments within a specific amount and date range
-- Table: payment
-- Description: Returns the number of payments with amounts between 1.99 and 3.99,
-- made between January 26 and January 28, 2020 (inclusive).
SELECT
COUNT (*)
FROM payment
WHERE amount BETWEEN 1.99 AND 3.99
AND payment_date BETWEEN '2020-01-26' AND '2020-01-28'

-- Query 2: Select all payments where:
-- customer_id is one of the specified values (12, 25, 67, 93, 124, 234)
-- AND the amount is either $4.99, $7.99, or $9.99
-- AND the payment was made between January 1 and February 1, 2020 (inclusive)
-- Purpose: Retrieve detailed payment records based on specific customers, amounts, and date range.
SELECT
*
FROM payment
WHERE customer_id IN (12,25,67,93,124,234)
AND amount IN (4.99,7.99,9.99)
AND payment_date BETWEEN '2020-01-01' AND '2020-02-01'
