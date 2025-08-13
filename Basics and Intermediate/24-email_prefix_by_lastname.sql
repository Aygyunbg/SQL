-- Get last name and email prefix (before first dot) using POSITION.
SELECT
last_name || ', ' || LEFT(email,POSITION('.' IN email)-1),
last_name
FROM customer