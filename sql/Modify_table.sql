SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:/Users/krose/Downloads/telcoCust.csv'
INTO TABLE telco_customers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

SELECT COUNT(*) FROM telco_customers;
SELECT * FROM telco_customers LIMIT 10;

