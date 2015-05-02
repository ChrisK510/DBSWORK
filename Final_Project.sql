-- Chris Koriniskie
-- Database System
-- Final Project
-- May 1, 2015


-- Create statements for tables


-- People Table -- 

CREATE TABLE people (
  pid      	 char(4) not null,
  first_Name 	 text,
  last_Name 	 text,
  county         Text,
  birth_Date	 date,
 primary key(pid)
);


-- Customers Table --

CREATE TABLE customers (
  pid          char(4) not null,
  date_Entered date,
 primary key(pid)
);


-- Employees Table --

CREATE TABLE employees (
  pid          char(4) not null,
  date_hired   date,
 primary key(pid)
);



-- Members Table --

create table members (
  pid          Char(4) not null, 
  member_level text,
  primary key(pid)
);



-- Products Table --


CREATE TABLE products (
  prodID        char(4) not null,
  brand         text,
  description   text,
  newQty 	int,
  usedQty 	int,
 primary key(prodID)
);


-- Used Value Table --

create table usedvalues (
  prodID	char(4) not null,
  poor_condUSD  numeric(12,2),
  good_condUSD  numeric(12,2),
 primary key(prodID)
);



-- New Value Table --

create table prices (
   prodID	 char(4) not null,
   new_priceUSD  numeric(12,2),
   used_priceUSD Numeric(12,2),
  primary key(prodID)
);

-- Tee Fees Table --

create table teefees (
   tid	char(4) not null,
   course_name  text,
   priceUSD     numeric(12,2),
  primary key(tid)
);

-- Transactions table --

create table transactions (
   pid       char(4)not null,
   prodID    char(4)not null,
   tid       char(4)not null,
   qty       int not null,
  primary key(pid,prodID,tid)
  );


-- Golf Clubs Table --

create table golfclubs (
   prodID	char(4) not null,
   gid		char(4) not null,
   side		text,
   club		text,
  primary key(prodID, gid)
);


-- Gold Balls Table --

create table golfballs (
   prodID	char(4) not null,
   pack_size    int not null,
   color	text,
  primary key(prodID)
);


-- Golf Shoes Table --

create table golfshoes (
   prodID	char(4) not null,
   gid		char(4) not null,
   size		int not null,
  primary key(prodID,gid)
);


-- Group ID Table --

create table groups (
   gid		char(4) not null,
   group_name   text,
  primary key(gid)
);




   
----------------------------------------------------------------------------------

-- People Table --
INSERT INTO people( pid, first_Name, last_Name, county, birth_date)
  VALUES('p001', 'Sean', 'Connery', 'Dutchess', '1930-08-25');

INSERT INTO people( pid, first_Name, last_Name, county, birth_date)
  VALUES('p002', 'Edgar', 'Codd', 'Putnam', '1923-08-23');
  
INSERT INTO people( pid, first_Name, last_Name, county, birth_date)
  VALUES('p003', 'Billy', 'Joel', 'Westchester', '1949-05-09');

INSERT INTO people( pid, first_Name, last_Name, county, birth_date)
  VALUES('p004', 'John', 'Smith', 'Dutchess', '1983-01-12');

INSERT INTO people( pid, first_Name, last_Name, county, birth_date)
  VALUES('p005', 'Mary', 'Swanson', 'Sullivan', '1988-03-11');

INSERT INTO people( pid, first_Name, last_Name, county, birth_date)
  VALUES('p006', 'Jean', 'Hartwright', 'Dutchess', '1972-11-09');

INSERT INTO people( pid, first_Name, last_Name, county, birth_date)
  VALUES('p007', 'Chris', 'Billings', 'Putnam', '1989-05-10');

INSERT INTO people( pid, first_Name, last_Name, county, birth_date)
  VALUES('p008', 'Emma', 'Davis', 'Dutchess', '1994-02-19');


-- Customer Table --

INSERT INTO customers( pid, date_entered)
  VALUES('p002', '2010-05-16');

INSERT INTO customers( pid, date_entered)
  VALUES('p005', '2011-01-12');

INSERT INTO customers( pid, date_entered)
  VALUES('p006', '2011-02-27');

INSERT INTO customers( pid, date_entered)
  VALUES('p007', '2011-05-06');

INSERT INTO customers( pid, date_entered)
  VALUES('p008', '2012-10-31');



-- Employees --

INSERT INTO employees( pid, date_hired)
  VALUES('p002', '2005-03-17');

INSERT INTO employees( pid, date_hired)
  VALUES('p008', '2014-05-12');


-- Member Table --

insert into members ( pid, member_level)
  Values('p008', 'Womens');

insert into members ( pid, member_level)
  Values('p001', 'Mens Senior');

insert into members ( pid, member_level)
  Values('p005', 'Womens');

insert into members ( pid, member_level)
  Values('p007', 'Mens');


-- Products Table --

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p001', 'Nike', 'Long Distance Golf Balls', '12', '1');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p002', 'Adidas', 'Mens black and yellow shoes', '6', '2');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p003', 'TaylorMade', '10.5 loft Driver', '25', '3');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p004', 'Cobra', 's3 Iron set', '7', '1');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p005', 'Under Armour', 'Pink Shoes', '11', '1');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p006', 'Titleist', 'Velocity golf balls', '30', '5');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p007', 'Under Armour', 'White Shoes', '8', '2');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p008', 'Srixon', 'Pure White LXT golf balls', '10', '7');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p009', 'Titleist', 'Graphite Shaft putter', '3', '1');

insert into products(prodID, brand, description, newQTY, usedQTY)
   values('p010', 'Callaway', 'Extra Distance Golf Balls', '17', '2');


-- Used Values table --

insert into usedvalues(prodID, poor_condUSD, good_condUSD)
   values('p004', 249.99, 349.99);

insert into usedvalues(prodID, poor_condUSD, good_condUSD)
   values('p006', 3.99, 9.99);

insert into usedvalues(prodID, poor_condUSD, good_condUSD)
   values('p010', 49.99, 79.99);


 -- Prices table --

 insert into prices (prodID, new_priceUSD, used_priceUSD)
   values('p003', 299.99, 199.99);
   
insert into prices (prodID, new_priceUSD, used_priceUSD)
   values('p001', 29.99, 9.99);

insert into prices (prodID, new_priceUSD, used_priceUSD)
   values('p002', 99.99, 49.99);

insert into prices (prodID, new_priceUSD, used_priceUSD)
   values('p005', 149.99, 69.99);


-- Tee Fees Table --

insert into teefees(tid, course_name, priceUSD)
   values('t050', 'Highland 18', 69.99);

insert into teefees(tid, course_name, priceUSD)
  values('t100', 'Meadows 9', 29.99);

insert into teefees(tid, course_name, priceUSD)
  values('t150', 'Trump 18', 149.99);

insert into teefees(tid, course_name, priceUSD)
   values('t200', 'Sunny Valley 9', 34.99);


-- Transactions table --

Insert into transactions(pid, prodID,tid,qty)
  values('','p005','t100', '1');

Insert into transactions(pid, prodID,tid,qty)
  values('p001','p002','', '1');

Insert into transactions(pid, prodID,tid,qty)
  values('p005','','t200', '1');


-- Golf Balls table --

insert into golfballs(prodID, pack_size, color)
  values('p001','12','Brilliant white');

insert into golfballs(prodID, pack_size, color)
  values('p006','6','Yellow');

insert into golfballs(prodID, pack_size, color)
  values('p008','12','Pure white');

insert into golfballs(prodID, pack_size, color)
  values('p010','24','Yellow');


-- Golf Shoes table --

insert into golfshoes(prodID,gid,size)
  values('p002', 'g001', '11');

insert into golfshoes(prodID,gid,size)
  values('p005', 'g004', '5');

insert into golfshoes(prodID,gid,size)
  values('p007', 'g001', '10');


-- Golf Clubs table --

insert into golfclubs(prodID,gid,side,club)
  values('p003', 'g001', 'Lefty', 'Driver');

insert into golfclubs(prodID,gid,side,club)
  values('p004', 'g003', 'Righty', 'Irons');

insert into golfclubs(prodID,gid,side,club)
  values('p010', 'g003', 'Righty', 'Putter');


-- Groups Table --

insert into groups(gid,group_name)
  values('g001', 'Mens');

insert into groups(gid,group_name)
  values('g002', 'Womans');

insert into groups(gid,group_name)
  values('g003', 'Boys Junior');

insert into groups(gid,group_name)
  values('g004', 'Girls Junior');

-------------------------------------------------
-- View  --

create view golfClubsinstore as
select p.prodID as product_ID, g.prodID as clubs
from products p, golfclubs g
where p.prodID = g.prodID


-- Stored Procedure --

 create function getAge(char(4)) returns integer as
$$
declare
   personID  char(4)  := $1;
   age integer;
   
begin 
   select extract(year from age((select birth_date
				 from people
				 where pid = personID))) into age;
   return age;
end;
$$ 
language plpgsql;


-- Reports --

select 

-- Triggers --

-- Check if person is a too old to be a Junior Member. You have to be under 18 to be a junior member. --

-- Security --
	-- Add and Admin--

create role admin
grant select, 
update, 
insert,
alter, 
on all tables in schema public 
to admin;
