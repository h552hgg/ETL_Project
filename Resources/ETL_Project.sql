--Create Tables
CREATE TABLE bitcoin ( 
Date DATE PRIMARY KEY,
bit_price FLOAT
);

CREATE TABLE ethereum ( 
date DATE PRIMARY KEY,
eth_price FLOAT
);

--Verify Tables are created and import of CSV
SELECT *
From bitcoin;

SELECT *
From ethereum;




