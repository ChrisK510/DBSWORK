
-----------------------------------
-- Chris Koriniskie 
-- Lab 04
-- Database Systems
-----------------------------------

-- 1. Get the cities of agents booking and order for a customer whose cid is c'006'

select city
from agents
where aid in
	(Select aid
	 from orders
	 where orders.cid = 'c006');
	 


-- 2. Get the pids of products ordered through any agent who takes at least one order 
--    from a customer in Kyoto, sorted by pid from highes to lowest.

Select pid
from products
where pid in
	( select pid 
	  from orders
	  where orders.aid in
	  (select aid
	   from orders
	   where orders.cid in
	   (select cid
	    from customers
	    where customers.city = 'Kyoto')))
	    order by pid desc;
	    

-- 3. Get the cids and names of customers who did not place an order through agent a03.


select 	cid,
	name
from customers
where cid not in
	( select cid
	 from orders
	 where aid = 'a03');
	 
	 
-- 4. Get the cids of customers who ordered both product p01 and p07

select cid
from customers
where cid in
	(select cid
	 from orders
	 where pid = 'p01' 
	 and cid in
	 (select cid
	  from orders 
	  where pid = 'p07'));


-- 5. Get the pids of products not ordered by any customers who placed any 
--    order through agent a05.

select pid
from orders
where cid not in
	(select cid
	 from orders
	 where aid = 'a05');


-- 6. Get the name, discounts, and city for all customers who place orders
--    through agents in Dallas or New York. 

Select name,
       discount,
       city
from customers
where cid in
	(select cid
	 from orders
	 where aid in
	 (select aid
	  from agents
	  where city = 'Dallas'
	     or city = 'New York'));


-- 7. Get all customers who have the same discount as that of any customers
--    in Dallas or London. 

select *
from customers
where discount in
	(select discount
	 from customers
	 where cid in
	 (select cid
	  from customers
	  where city = 'Dallas' 
	    or city = 'London'))
and cid not in 
	(select cid
	 from customers
	 where city = 'Dallas'
	    or city = 'London');


-- 8. Check constraints are used to check the values that may be entered into a record. They need
--    to meet  whatever the check condition states or they will be rejected from ever being entered
--    into that table. If you have a table of customers and a column with age and you do not want 
--    any customers under age 15 you can put a check constraint on there to make sure that no customers
--    under or equal to the age of 15 can be entered into the database. For a bad example I would think 
--    putting a check constraint that may limit the number of items in your shopping basket for an online
--    store maybe. Obviously you do not want to limit your customers to only buying a certain number of 
--    products. 
	    
    