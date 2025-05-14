-- BRANCH
INSERT INTO Branch (BranchID, PhoneNumber, Address) VALUES
(1, '90123456', 'Muscat'),
(2, '90234567', 'Salalah'),
(3, '90345678', 'Sohar'),
(4, '90456789', 'Nizwa'),
(5, '90567890', 'Sur');
-- EMPLOYEE
INSERT INTO Employee (EmployeeID, Position, Name, BranchID) VALUES
(1, 'Manager', 'Ahmed Al-Busaidi', 1),
(2, 'Teller', 'Fatma Al-Zadjali', 2),
(3, 'Clerk', 'Khalid Al-Harthy', 3),
(4, 'Supervisor', 'Muna Al-Farsi', 4),
(5, 'Analyst', 'Salim Al-Maskari', 5);
-- CUSTOMER
INSERT INTO Customer (CustomerID, BirthDate, Address, Name, Phone) VALUES
(101, '1990-05-15', 'Seeb', 'Ali Al-Harthy', '91123456'),
(102, '1985-11-20', 'Bawshar', 'Huda Al-Kalbani', '91234567'),
(103, '1993-02-10', 'Ruwi', 'Yusuf Al-Lawati', '91345678'),
(104, '1988-08-08', 'Amerat', 'Aisha Al-Nabhani', '91456789'),
(105, '1995-03-25', 'Muttrah', 'Saeed Al-Rawahi', '91567890');
-- ACCOUNT
INSERT INTO Account (AccountNumber, Balance, DateOfCreation, Saving, Checking, EmployeeID, CustomerID) VALUES
(1001, 5000.00, '2020-01-01', 1, 0, 1, 101),
(1002, 3000.00, '2021-03-15', 0, 1, 2, 102),
(1003, 7000.00, '2022-05-10', 1, 1, 3, 103),
(1004, 2500.00, '2021-07-20', 1, 0, 4, 104),
(1005, 10000.00, '2023-01-05', 0, 1, 5, 105);
-- LOAN
INSERT INTO Loan (LoanID, DateIssued, Amount, EmployeeID, CustomerID) VALUES
(501, '2021-02-01', 10000.00, 1, 101),
(502, '2021-06-10', 15000.00, 2, 102),
(503, '2022-04-15', 8000.00, 3, 103),
(504, '2023-01-30', 12000.00, 4, 104),
(505, '2023-08-12', 20000.00, 5, 105);
-- ASSISTS
INSERT INTO Assists (CustomerID, EmployeeID, ActionType) VALUES
(101, 1, 'Account Opening'),
(102, 2, 'Loan Approval'),
(103, 3, 'Deposit Help'),
(104, 4, 'Complaint Handling'),
(105, 5, 'Card Issuing');
-- TRANSACTIONS
INSERT INTO Transactions (TransactionID, Date, Amount, Withdrawal, Deposit, Transfer, AccountNumber) VALUES
(9001, '2024-01-01', 500.00, 1, 0, 0, 1001),
(9002, '2024-01-05', 1000.00, 0, 1, 0, 1002),
(9003, '2024-02-01', 250.00, 0, 0, 1, 1003),
(9004, '2024-03-12', 700.00, 1, 0, 0, 1004),
(9005, '2024-04-10', 1200.00, 0, 1, 0, 1005);