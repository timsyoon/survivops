-- Name: Joshua Kaiser, Timothy Yoon
-- Group: 57
-- Assignment: Project Step 4 Draft Version
-- File: data-manipulation-queries.sql
-- Description: This file contains SELECT, INSERT, UPDATE and
--   DELETE queries to let users interact with data.

-- The ‘:’ preceding a variable will be used to denote 
-- user-entered input

-- Note: This file is not yet complete.

-- CREATE
INSERT INTO `customers` (fname, lname, email, password, phone_number)
VALUES (:fnameInput, :lnameInput, :emailInput, :passwordInput, :phone_numberInput);

INSERT INTO carts (customer_id, cart_name) VALUES (:customer_id, :cart_name);

SELECT fname, lname, email, password, phone_number FROM customers WHERE customer_id = :customer_id;

-- READ
SELECT product_name, price, image FROM products WHERE category = :category;

SELECT customer_id
FROM customers
WHERE :emailInput IN

--    READ cart (Requires a join)

-- UPDATE
UPDATE customers SET email=’new-email’, password=’new-password’ WHERE user_id = :id;


-- DELETE
DELETE FROM customers WHERE user_id = :id;

