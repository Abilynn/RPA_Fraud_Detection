--viewing table
SELECT *
FROM fraud_detection


--retrieving transactions with smokey bear's zipcode(20252)
SELECT *
FROM fraud_detection
WHERE zip = 20252


--retrieving transactions with full_name as 'Art Vandelay' or middle name as 'der'
SELECT *
FROM fraud_detection
WHERE full_name = 'Art Vandelay' OR
      full_name LIKE '% der %'


--retrieving transactions with ip_addresse beginning with '10.'
SELECT id, full_name, ip_address
FROM fraud_detection
WHERE ip_address LIKE '10.%'


--retrieving transactions ending in 'temp_email.com'
SELECT id, full_name, email
FROM fraud_detection
WHERE email LIKE '%temp_email.com'


--retrieving transaction with ip_address '120.' AND name starting with 'John'
SELECT *
FROM fraud_detection
WHERE full_name LIKE 'John%' AND
      ip_address LIKE '120.%'