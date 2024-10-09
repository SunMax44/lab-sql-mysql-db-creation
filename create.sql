CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

DROP TABLE IF EXISTS cars;

CREATE TABLE Cars (VIN INT PRIMARY KEY, Manufacturer VARCHAR(20), Model VARCHAR(20), Year INT, Color VARCHAR(20), FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID), FOREIGN KEY (Staff_ID) REFERENCES Salespersons (Staff_ID));

CREATE TABLE Customers (Customer_ID INT PRIMARY KEY, Name VARCHAR(45), Phone_Number INT, Email VARCHAR(45), Address VARCHAR(45), FOREIGN KEY (Staff_ID) REFERENCES Salespersons (Staff_ID));

CREATE TABLE Salespersons (Staff_ID INT PRIMARY KEY, Name VARCHAR(45), Store VARCHAR(45));

CREATE TABLE Invoices (Invoice_Number INT PRIMARY KEY, Date DATETIME, FOREIGN KEY (Customer_ID) REFERENCES Customers (Customer_ID), FOREIGN KEY (Staff_ID) REFERENCES Salespersons (Staff_ID), FOREIGN KEY (VIN) REFERENCES Cars (VIN));

DESCRIBE Invoices;



