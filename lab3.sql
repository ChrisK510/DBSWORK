
-----------------------------------------------
-- Chris Koriniskie
-- Lab 03
-- February 12, 2015
-----------------------------------------------



-- Question 1
SELECT ordno, dollars
FROM orders;

-- Question 2
SELECT *
FROM agents
WHERE name = 'Smith';

-- Question 3
SELECT pid, name, priceUSD, quantity 
FROM products 
WHERE quantity > 200000;

-- Question 4
SELECT name, city
FROM customers
WHERE city = 'Dallas';

-- Question 5
SELECT name
FROM agents
WHERE city <> 'New York' 
   or city <> 'Tokyo';

-- Question 6
SELECT *
FROM products
WHERE city <> 'Dallas' 
   and city <> 'Duluth' 
   and priceusd >= 1.00;

-- Question 7
SELECT *
FROM orders
WHERE mon = 'jan' 
   or mon = 'may';

-- Question 8
SELECT *
FROM orders
WHERE mon = 'feb' 
   and dollars > 500.00;

-- Question 9
SELECT *
FROM orders
WHERE cid = 'c005';




