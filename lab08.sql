-- Chris Koriniskie
-- Database Systems
-- Lab08



drop table if exists purchaseInfo;
drop table if exists purchaseMain;
drop table if exists items;
drop table if exists supplier;
drop table if exists zipcode;

-- Table for the clothing store

CREATE TABLE items
(
	sku		CHARACTER(5) NOT NULL,
	description	TEXT,
	retailUSD	NUMERIC(5,2),
	qtyOnHand	INTEGER,
	PRIMARY KEY (sku)
);


-- Table for suppliers info
-- NOTE: payTerm in days!!

CREATE TABLE supplier
(
	sid		CHARACTER(4) NOT NULL,
	address		TEXT,
	zip		CHARACTER(5),
	contactNum	CHARACTER(10),
	payTerm	        INTEGER,
	PRIMARY KEY (sid)
);  


create table zipcode
(
	zip		character(5),
	city		text,
	state		text,
	primary key (zip)
);


CREATE TABLE purchaseMain
 (
	ordno		INTEGER NOT NULL,
	sid		character (4) not null,
	purDate 	DATE,
	itemInfo	TEXT,
	PRIMARY KEY (ordno)
);


  
CREATE TABLE purchaseInfo
 (
	ordno		INTEGER NOT NULL,
	sku		character (5) not null,
	qty             integer,
	priceUSD	numeric(6,2),
	PRIMARY KEY (ordno,sku)
);


-- SQL statements
	

-- Items Table 
INSERT INTO items ( sku, description, retailUSD, qtyOnHand )
   VALUES('sk001', 'shirt', 32.05, 200);
   
INSERT INTO items ( sku, description, retailUSD, qtyOnHand )
   VALUES('sk002', 'jeans', 25.00, 125);
   
INSERT INTO items (sku, description, retailUSD, qtyOnHand)
   VALUES('sk003', 'beanies', 10.00, 75);


-- Suppliers Table
INSERT INTO supplier(sid, address, zip, contactNum, payTerm)
   VALUES('s001', '200 Wilbur St','32050', '1393557867', 30);
   
INSERT INTO supplier(sid, address, zip, contactNum, payTerm)
   VALUES('s002', '1010 Database Dr.', '78390', '1767895678', 90);
   
INSERT INTO supplier(sid, address, zip, contactNum, payTerm)
   VALUES('s003', '343 Main St.', '12582', '8452264000', 30);


-- Zipcde table
insert into zipcode(zip, city, state)
  values ('32050', 'Phoenix', 'Arizona');

insert into zipcode(zip, city, state)
  values ('78390', 'Honolulu', 'Hawaii');

insert into zipcode(zip, city, state)
  values ('12582', 'Stormville', 'New York');
  

-- Purchases Main Table
insert into purchaseMain(ordno, sid, purDate, itemInfo)
  values ('1001', 's001', '2015-01-15', 'Red shirt');

insert into purchaseMain(ordno, sid, purDate, itemInfo)
  values ('1002', 's002', '2015-02-20', 'Blue Jeans');

insert into purchaseMain(ordno, sid, purDate, itemInfo)
  values ('1003', 's003', '2015-03-17', 'Neff Beanies');



--Purhaces Info Table
insert into purchaseInfo(ordno, sku, qty, priceUSD)
  values ('1001', 'sk001', 10, 320.50);

insert into purchaseInfo(ordno, sku, qty, priceUSD)
  values ('1002', 'sk002', 40, 1000.00);

insert into purchaseInfo(ordno, sku, qty, priceUSD)
  values ('1003', 'sk003', 150, 1500.00);
   

  