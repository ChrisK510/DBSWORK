-- 1. Display the name and city of customer who live in any city that makes the most different kinds
--    of products.

select c.name,
       c.city
from customers c, 
     products p
where c.city = p.city and p.city in 
         (select p.city
	  from products p);

-- 2. Display the names of products whose priseUSD is below the average price USD, in alphabetical order.

select p.name
from products p
where priceusd > 
	(select avg(priceusd) 
         from products)
order by pid DESC;

-- 3. Display the customer name, pid ordered, and the dollars for all orders, sorted by dollars from
--    high to low.

select c.name, 
       o.pid, 
       o.dollars
from customers c, 
     orders o
where c.cid = o.cid
order by dollars desc;

-- 4. Display all customer names (in reverse alphabetical order) and their total ordered, and nothing
--    more. Use coalesce to avoid showing NULLS.

select c.name, 
coalesce(sum(o.qty),0) as "total qty"
from customers c
left outer join orders o on c.cid = o.cid
group by c.name
order by c.name DESC;

-- 5. Display the names of all customers who bought products from agents based in Tokyo along with the
--    the name of the products they ordered, and the names of the agents who sold it to them.

select c.name
from customers c,
     products p,
     orders o,
     agents a
where a.aid = 'a03';
      

-- 6. Write a query to check the accuracy of the dollars column in the Orders table. This means calculating 
--    orders.dollars from data in other tables and comparing those values to values in orders.dollars. Display
--    all rows in Orders where Orders.dollars is incorrect, if any.

-- 7. What's the difference between a Left Outer Join and a Right Outer Join? Give example queries in SQL to demonstrate. 

-- Left outer join will get everything in the left plus whatever it shares (inner value) from the right table.
-- Right outer will do the opposite by getting all its value plus whatever it shares with the left table. 

select a.city
from agents a
left outer join customers c
on c.city = a.city;

