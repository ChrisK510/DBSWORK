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
  name          text,
  description   text,
  newQty 	int,
  usedQty 	int,
 primary key(prodID)
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

  select *
  from customers

-- Employees --

INSERT INTO employees( pid, date_hired)
  VALUES('p002', '2005-03-17');

INSERT INTO employees( pid, date_hired)
  VALUES('p008', '2014-05-12');

select *
from employees

-- Member Table --

insert into members ( pid, member_level)
  Values('p008', 'Womens');

insert into members ( pid, member_level)
  Values('p001', 'Mens Senior');

insert into members ( pid, member_level)
  Values('p005', 'Womens');

insert into members ( pid, member_level)
  Values('p007', 'Mens');




