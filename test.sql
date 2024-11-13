CREATE DATABASE RetailDW
USE RetailDW;

CREATE TABLE Sales_Fact (
TransactionID  VARCHAR(200) PRIMARY KEY,
DateID INT CONSTRAINT fk_date_fact REFERENCES Date_Dim(DateID),
CustomerID VARCHAR(200) CONSTRAINT fk_customer_fact REFERENCES Customer_Dim(CustomerID) ,
ProductID VARCHAR(200) CONSTRAINT fk_product_fact REFERENCES Product_Dim(ProductID) ,
Quantity INT,
TotalAmount DECIMAL(10, 2)
);      

CREATE TABLE Customer_Dim (
CustomerID  VARCHAR(200) PRIMARY KEY,
CustomerName VARCHAR(100),
CustomerAddress VARCHAR(300),
City VARCHAR(100),
Region VARCHAR(200),
CustomerPhone VARCHAR(100),
Customer_Email VARCHAR(150)
);
               
CREATE TABLE Product_Dim (
ProductID  VARCHAR(200) PRIMARY KEY,
ProductName VARCHAR(100),
Category VARCHAR(100),
Price DECIMAL(10, 2)
);
               
CREATE TABLE Date_Dim (
DateID  SERIAL PRIMARY KEY,
Date DATE,
Day INT,
Month INT,
Year INT,
Weekday VARCHAR(15),
Quarter VARCHAR(15)
);