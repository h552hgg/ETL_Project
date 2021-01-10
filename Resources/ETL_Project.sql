--Create Tables
CREATE TABLE bitcoin ( 
Date DATE PRIMARY KEY,
CBBTCUSD money
);


CREATE TABLE ethereum ( 
date DATE PRIMARY KEY,
eth_price money
);

--Verify tables are created and data entered
SELECT *
From ethereum;

SELECT *
From bitcoin;

-- Change Column name in bitcoin database
ALTER TABLE bitcoin 
RENAME cbbtcusd TO bit_price;

SELECT *
From bitcoin;

--Tried to merge both tables while creating new crypto table
DROP TABLE crypto;

CREATE TABLE crypto as
SELECT date,bit_price FROM bitcoin
UNION ALL
SELECT date,eth_price FROM ethereum;

SELECT *
FROM crypto;