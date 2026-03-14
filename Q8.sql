SELECT DISTINCT st.Customer_ID
FROM Sales_Transactions st
LEFT JOIN Customers_Master cm ON st.Customer_ID = cm.CustomerID
WHERE cm.CustomerID IS NULL;