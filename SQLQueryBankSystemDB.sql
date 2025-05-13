CREATE DATABASE BankSystem;
USE BankSystem;
-- Branch
CREATE TABLE Branch (
    BranchID INT PRIMARY KEY,
    PhoneNumber VARCHAR(15),
    Address VARCHAR(100)
);
--  Employee
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    Position VARCHAR(30),
    Name VARCHAR(50),
    BranchID INT
);
--  Customer
CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    BirthDate DATE,
    Address VARCHAR(100),
    Name VARCHAR(50),
    Phone VARCHAR(15)
);
-- Loan
CREATE TABLE Loan (
    LoanID INT PRIMARY KEY,
    DateIssued DATE,
    Amount DECIMAL(10, 2),
    EmployeeID INT,
    CustomerID INT
);
--  Account
CREATE TABLE Account (
    AccountNumber INT PRIMARY KEY,
    Balance DECIMAL(10, 2),
    DateOfCreation DATE,
    Saving BIT,
    Checking BIT,
    EmployeeID INT,
    CustomerID INT
);
--  Transactions
CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY,
    Date DATE,
    Amount DECIMAL(10, 2),
    Withdrawal BIT,
    Deposit BIT,
    Transfer BIT,
    AccountNumber INT
);
--  Assists
CREATE TABLE Assists (
    CustomerID INT,
    EmployeeID INT,
    ActionType VARCHAR(50),
    PRIMARY KEY (CustomerID, EmployeeID)
);
-- ========================
-- FOREIGN KEY CONSTRAINTS=
-- ========================
ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_Branch FOREIGN KEY (BranchID) REFERENCES Branch(BranchID);
ALTER TABLE Loan
ADD CONSTRAINT FK_Loan_Employee FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
ALTER TABLE Loan
ADD CONSTRAINT FK_Loan_Customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
ALTER TABLE Account
ADD CONSTRAINT FK_Account_Employee FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
ALTER TABLE Account
ADD CONSTRAINT FK_Account_Customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
ALTER TABLE Transactions
ADD CONSTRAINT FK_Transactions_Account FOREIGN KEY (AccountNumber) REFERENCES Account(AccountNumber);
ALTER TABLE Assists
ADD CONSTRAINT FK_Assists_Customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID);
ALTER TABLE Assists
ADD CONSTRAINT FK_Assists_Employee FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID);
