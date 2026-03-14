CREATE TABLE Customers_Master (
    CustomerID VARCHAR(10),
    CustomerName VARCHAR(50),
    City VARCHAR(30)
);

INSERT INTO Customers_Master (CustomerID, CustomerName, City) VALUES
('C101', 'Rahul Mehta', 'Mumbai'),
('C102', 'Anjali Rao', 'Bengaluru'),
('C103', 'Suresh Iyer', 'Chennai'),
('C104', 'Neha Singh', 'Delhi');

CREATE TABLE Sales_Transactions (
    Txn_ID INT,
    Customer_ID VARCHAR(10),
    Customer_Name VARCHAR(50),
    Product_ID VARCHAR(10),
    Quantity INT,
    Txn_Amount DECIMAL(10,2),
    Txn_Date DATE,
    City VARCHAR(30)
);

INSERT INTO Sales_Transactions (Txn_ID, Customer_ID, Customer_Name, Product_ID, Quantity, Txn_Amount, Txn_Date, City) VALUES
(201, 'C101', 'Rahul Mehta', 'P11', 2, 4000, '2025-12-01', 'Mumbai'),
(202, 'C102', 'Anjali Rao', 'P12', 1, 1500, '2025-12-01', 'Bengaluru'),
(203, 'C101', 'Rahul Mehta', 'P11', 2, 4000, '2025-12-01', 'Mumbai'),
(204, 'C103', 'Suresh Iyer', 'P13', 3, 6000, '2025-12-02', 'Chennai'),
(205, 'C104', 'Neha Singh', 'P14', NULL, 2500, '2025-12-02', 'Delhi'),
(206, 'C105', 'N/A', 'P15', 1, NULL, '2025-12-03', 'Pune'),
(207, 'C106', 'Amit Verma', 'P16', 1, 1800, NULL, 'Pune'),
(208, 'C101', 'Rahul Mehta', 'P11', 2, 4000, '2025-12-01', 'Mumbai');

SELECT Customer_ID, Product_ID, Txn_Date, Txn_Amount, COUNT(*) as duplicate_count
FROM Sales_Transactions
GROUP BY Customer_ID, Product_ID, Txn_Date, Txn_Amount;

SELECT Customer_ID, Product_ID, Txn_Date, Txn_Amount, COUNT(*) as duplicate_count
FROM Sales_Transactions
GROUP BY Customer_ID, Product_ID, Txn_Date, Txn_Amount
HAVING COUNT(*) > 1;

SELECT Customer_ID, Product_ID, Txn_Date, Txn_Amount, COUNT(*) as duplicate_count
FROM Sales_Transactions 
GROUP BY Customer_ID, Product_ID, Txn_Date, Txn_Amount 
HAVING COUNT(*) > 1;