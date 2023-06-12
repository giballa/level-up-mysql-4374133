CREATE VIEW sales_transactions AS
SELECT orders.OrderDate, employee.EmployeeName, 
customer.CustName, product.ProdName, 
product.Price, orders.Quantity FROM orders
JOIN product ON product.ProdNumber = orders.ProdNumber
JOIN customer USING (CustomerID)
JOIN employee USING (EmpID)
ORDER BY orders.OrderDate DESC;