CREATE TABLE review_id_table2 (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products2 (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers2 (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table2 (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);

-- Check tables count--
SELECT count(*) FROM review_id_table2;
SELECT count(*) FROM products2;
SELECT count(*) FROM customers2;
SELECT count(*) FROM vine_table2;

--  First 10 registers
SELECT * FROM review_id_table2
Limit 10;

SELECT * FROM products2
Limit 10;

SELECT * FROM customers2
Limit 10;

SELECT * FROM vine_table2
Limit 10;
