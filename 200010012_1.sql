-- Q1) Creating User and Database named lab3
CREATE USER 'lab3'@'localhost' IDENTIFIED BY 'wenomechainsama';
CREATE DATABASE lab3;
GRANT ALL PRIVILEGES ON lab3.* TO 'lab3'@'localhost';

-- Q2) Creating Tables
USE lab3;
CREATE TABLE part(
    `part-no` INT(6) PRIMARY KEY,
    `part-name` VARCHAR(45) NOT NULL,
    color VARCHAR(7),
    weight NUMERIC(7,3)
    );
CREATE TABLE supplier(
    `supplier-no` INT(5) PRIMARY KEY,
    `sup-name` VARCHAR(45) NOT NULL,
    city VARCHAR(30) NOT NULL, 
    bank VARCHAR(30)
    );
CREATE TABLE shipment(
    `shipment-no` INT(7) PRIMARY KEY,
    `part-no` INT(6) NOT NULL,
    `supplier-no` INT(5) NOT NULL,
    date DATE,
    quantity INT(5),
    price NUMERIC(7,2),
    FOREIGN KEY (`part-no`) REFERENCES part(`part-no`),
    FOREIGN KEY (`supplier-no`) REFERENCES supplier(`supplier-no`)
    );

-- Q3) Inserting a tuple into each table

INSERT INTO part VALUES (1000,'Steel Bolt','Black',1);
INSERT INTO supplier VALUES (2000,'Adithya Narayan','Trivandrum','Airport Bank');
INSERT INTO shipment VALUES(3000,1000,2000,'2022-09-07',100,1);

-- Q5) 
