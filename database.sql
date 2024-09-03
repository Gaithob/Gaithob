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
    headquarters_phone_number VARCHAR(50) DEFAULT NULL,
    PRIMARY KEY (company_id)
);

INSERT INTO sales VALUES (1, '2015-01-01', 1, 01);
INSERT INTO sales VALUES (2, '2015-01-02', 2, 02);
INSERT INTO sales VALUES (3, '2015-02-02', 3, 03);
INSERT INTO sales VALUES (4, '2015-02-03', 2, 02);
INSERT INTO sales VALUES (5, '2015-03-02', 4, 04);

INSERT INTO customers VALUES (1, 'John', 'Taveta', 'M', 'john@email.com', 2);
INSERT INTO customers VALUES (2, 'Davie', 'Masinga', 'M', 'davie@email.com', 3);
INSERT INTO customers VALUES (3, 'Waja', 'Wawaya', 'F', 'waja@email.com',1);
INSERT INTO customers VALUES (4, 'Vera', 'Akothe', 'F', 'akothe@email.com', 6);
INSERT INTO customers VALUES (5, 'Andrew', 'Atwoli', 'M', 'atwoli@email.com', 4);
INSERT INTO customers VALUES (6, 'Lilian', 'Nyamu', 'F', 'lilian@email.com',5);

INSERT INTO items VALUES (01, 3, 6.15, '1');
INSERT INTO items VALUES (02, 5, 10.25, 2);
INSERT INTO items VALUES (03, 9, 18.45, 3);
INSERT INTO items VALUES (04, 2, 4.10, 2);

INSERT INTO companies VALUES (1, 'City Treats', '192-168-8080');
INSERT INTO companies VALUES (2, 'Amazoo Sweets', '614-001-0000');
INSERT INTO companies VALUES (3, 'Tropical Candy', '300-000-1111');

