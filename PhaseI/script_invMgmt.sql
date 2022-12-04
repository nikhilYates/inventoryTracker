DROP DATABASE IF EXISTS inventoryManagement;
CREATE DATABASE inventoryManagement;
USE inventoryManagement;

CREATE TABLE Product (
pnumber	INTEGER NOT NULL,
p_manufacturer varchar(50)	NOT NULL,
quantity	INTEGER	NOT NULL,
PRIMARY KEY(pnumber)
);

CREATE TABLE Tool (
product_no INTEGER NOT NULL,
tool_name VARCHAR(50) NOT NULL,
tool_type VARCHAR(50) NOT NULL,
PRIMARY KEY (product_no),
FOREIGN KEY (product_no) 
	REFERENCES Product(pnumber)
);

CREATE TABLE Hardware (
product_no INTEGER NOT NULL,
hardware_name VARCHAR(50) NOT NULL, 
hardware_type VARCHAR(50) NOT NULL,
PRIMARY KEY (product_no),
FOREIGN KEY(product_no) 
	REFERENCES Product(pnumber)
);

CREATE TABLE Buyer (
id INTEGER NOT NULL,
buyer_name VARCHAR(50) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE Bought_by (
purchase_date VARCHAR(10) NOT NULL,
product_no INTEGER NOT NULL,
buyer_id INTEGER NOT NULL,
PRIMARY KEY(product_no, buyer_id),
FOREIGN KEY(product_no) 
	REFERENCES Product(pnumber),
FOREIGN KEY(buyer_id) 
	REFERENCES Buyer(id)
);