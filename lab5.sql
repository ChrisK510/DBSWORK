-----------------------------
-- Chris Koriniskie
-- Lab 5
-- Database Systems
----------------------------

-- 1. Show the cities of agents booking an order for a customer
--    whose cid is 'c006'. Use joins!

select city
from agents a,
     orders o
where o.aid = a.aid
	and cid = 'c006';


-- 2. Show the pids of products ordered through any agent who makes 
--    at least one order for a customer in Kyoto, sorted by pid
--    from highest to lowest. Use Joins!

select o2.pid
from   orders o,
       customers c,
       orders o2
where o.cid = c.cid
   and o.aid = o2.aid
   and c.city = 'Kyoto'
order by pid desc;


-- 3. Show the names of customers who have never placed an order. 
--    Use a subquery.

Select name
from customers
where cid not in
	(select cid
	 from orders);

	 
-- 4. Show the names of customers who have never placed an order. 
--    Use an outer join.

select c.name 
from orders o right outer join customers c
on o.cid = c.cid
where o.cid is null
order by c.cid;

-- 5. Show the names of customers who placed at least one order through 
--    an agents in their own city, along with those agent(s) names. 

select c.city,
       c.name
from customers c,
     orders o, 
     agents a
where c.cid = o.cid
	and a.aid = o.aid
	and c.city = a.city;



-- 6. Show the names of customers and agents living in the same city, 
--    along with the name of the shared city, regardless of whether
--    or not the customer has ever placed an order with that agent.


select c.city,
       c.name,
       a.name
from customers c,
     agents a
where a.city = c.city
	

	 
-- 7. Show the name and the city of customers who live in the city that
--    makes the fewest different kinds of products. (Use count and group
--    by on the products tabele)
 nnnn

