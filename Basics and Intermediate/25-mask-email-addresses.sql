-- Masks customer emails for privacy, keeping only parts of the name and domain.
SELECT
LEFT(email,1) 
|| '***' 
|| SUBSTRING(email from POSITION ('.' in email) for 2)
|| '***' 
|| SUBSTRING(email from POSITION ('@' in email))
FROM customer