DROP SCHEMA IF EXISTS sales;
CREATE SCHEMA IF NOT EXISTS sales;
USE sales;

DROP TABLE IF EXISTS sales;
CREATE TABLE IF NOT EXISTS sales (
    purchase_number INT NOT NULL,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code VARCHAR(15) NOT NULL,
    PRIMARY KEY (purchase_number)
);

DROP TABLE IF EXISTS customers;
CREATE TABLE IF NOT EXISTS customers (
	customer_id INT NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    gender ENUM ('M', 'F'),
    email_address VARCHAR(255),
    number_of_companies INT,
    PRIMARY KEY (customer_id),
    UNIQUE KEY (email_address)
);

DROP TABLE IF EXISTS  items;
CREATE TABLE IF NOT EXISTS items (
	item_code VARCHAR(15) NOT NULL,
    item VARCHAR(40) NOT NULL,
    unit_price NUMERIC (10, 2),
    company_id VARCHAR(20) NOT NULL,
    PRIMARY KEY (item_code)
);

DROP TABLE IF EXISTS companies;
CREATE TABLE IF NOT EXISTS companies(
	company_id VARCHAR(40) NOT NULL,
    company_name VARCHAR(40) NOT NULL,
    headquarters_phone_number INT,
    PRIMARY KEY (company_id)
);

    
