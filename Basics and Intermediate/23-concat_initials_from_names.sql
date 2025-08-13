-- Get customer initials by combining first letters of first and last name.
SELECT
LEFT(first_name,1) || LEFT(last_name,1)
first_name,
last_name
FROM customer