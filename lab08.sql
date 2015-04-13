-- Chris Koriniskie
-- Database Systems
-- Lab08



drop table if exists purchases;
drop table if exists clothes;
drop table if exists suppliers;

-- Table for the clothing store

CREATE TABLE clothes
(
	sku		CHARACTER(5) NOT NULL,
	description	TEXT,
	retailUSD	NUMERIC(5,2),
	qtyOnHand	INTEGER,
	PRIMARY KEY (sku)
);

-- Table for suppliers info
-- NOTE: payTerm in days!!

CREATE TABLE suppliers
(
	sid		CHARACTER(4) NOT NULL,
	street		TEXT,
	city		TEXT,
	state		CHARACTER(2),
	zip		CHARACTER(5),
	contactNum	CHARACTER(10),
	payTerm	INTEGER,
	PRIMARY KEY (sid)
);   

CREATE TABLE purchases
 (
	ordno		INTEGER NOT NULL,
	sid		CHARACTER(4) NOT NULL references suppliers(sid),
	sku		CHARACTER(5) NOT NULL references clothes(sku),
	qty		INTEGER,
	priceUSD	NUMERIC(6,2),
	ordDate 	DATE,
	info	 	TEXT,
	PRIMARY KEY (ordno)
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
   

  