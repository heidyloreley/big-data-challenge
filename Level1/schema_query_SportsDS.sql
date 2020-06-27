CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);

-- Check tables count--
SELECT count(*) FROM review_id_table;
SELECT count(*) FROM products;
SELECT count(*) FROM customers;
SELECT count(*) FROM vine_table;

--  First 10 registers
SELECT * FROM review_id_table
Limit 10;

SELECT * FROM products
Limit 10;

SELECT * FROM customers
Limit 10;

SELECT * FROM vine_table
Limit 10;

--  VINE ANALYSIS -- LEVEL 2 CHALLENGE
-- HOW MANY CUSTOMERS ARE CATEGORIZED AS "VINE VOICES" / BELONG TO THE "VINE PROGRAM"

-- WHO ARE THE TOP 20 CUSTOMERS WITH MORE VINE RECOMENDATIONS?
-- WHAT IS THE AVERAGE STAR RATINGS FOR THE TOP 20 CUSTOMERS WTIH MORE RECOMENDATIONS? 
-- WHAT IS THE AVERAGE STAR RATINGS FOR THE TOP 20 CUSTOMERS WTIH MORE TOTAL VOTES? 
-- WHAT IS THE AVERAGE STAR RATINGS FOR THE TOP 20 CUSTOMERS WTIH MORE HELPFUL VOTES? 

-- WAHT IS THE AVERAGE RATING FOR THE CUSTOMER WITH THE MOST HELPFUL VOTES?

