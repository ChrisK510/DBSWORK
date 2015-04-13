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

create table zipode
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
	priceUSD	numeric(6,2),
	PRIMARY KEY (ordno,sku)
);


-- SQL statements
	

-- Clothes Table 
INSERT INTO clothes ( sku, description, retailUSD, qtyOnHand )
   VALUES('sk001', 'shirt', 32.05, 200);
   
INSERT INTO clothes ( sku, description, retailUSD, qtyOnHand )
   VALUES('sk002', 'jeans', 25.00, 125);
   
INSERT INTO clothes (sku, description, retailUSD, qtyOnHand)
   VALUES('sk003', 'beanies', 10.00, 75);

select * from clothes

-- Suppliers Table
INSERT INTO suppliers(sid, street, city, state, zip, contactNum, payTerm)
   VALUES('s001', 'Wilbur St', 'Honolulu', 'HI', '32050', '1393557867', 30);
   
INSERT INTO suppliers(sid, street, city, state, zip, contactNum, payTerm)
   VALUES('s002', 'Database Dr.', 'Dataville', 'NM', '78390', '1767895678', 90);
   
INSERT INTO suppliers(sid, street, city, state, zip, contactNum, payTerm)
   VALUES('s003', 'Main St.', 'Hopewell Jct.', 'NY', '12582', '8452264000', 30);

-- Purchases Table
INSERT INTO purchases( sid, sku, info, qty, priceUSD, ordno, ordDate )
   VALUES('s001', 'sk001', 'Shirts', 10, 320.50, 1001, '2015-01-15');

INSERT INTO purchases( sid, sku, info, qty, priceUSD, ordno, ordDate )
   VALUES('s002', 'sk002', 'Jeans', 8, 200.00, 1002, '2015-02-27');

INSERT INTO purchases( sid, sku, info, qty, priceUSD, ordno, ordDate )
   VALUES('s001', 'sk001', 'Beanies', 50, 500.00, 1003, '2015-03-17');
   

  