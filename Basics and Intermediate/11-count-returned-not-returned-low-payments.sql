-- Count of rentals where the movie has been returned (return_date is NOT NULL)
SELECT
COUNT (*)
FROM rental
WHERE return_date is not null

-- Count of rentals where the movie has NOT been returned yet (return_date IS NULL)
SELECT
COUNT (*)
FROM rental
WHERE return_date is null

-- List of payments with amount less than or equal to 2, sorted by amount in descending order
Select
payment_id,
amount
FROM payment
WHERE amount <= 2
ORDER BY amount DESC