select top 5 * from Employees
select distinct category from products
select * from Products where price > 100
select * from Customers where firstname like 'A%'
select * from Products order by price asc
SELECT * FROM Employees WHERE Salary >= 60000 and Department = 'HR';
SELECT EmployeeID, FirstName, LastName, ISNULL(Email, 'noemail@example.com') AS Email FROM Employees;
select * from Products where price between 50 and 100
select distinct category, ProductName from products
select distinct category, ProductName from products order by ProductName desc
 

 SELECT TOP 10 * FROM Products ORDER BY Price DESC;
 SELECT COALESCE(FirstName, LastName) AS FirstNonNullName FROM Employees;
 SELECT DISTINCT Category, Price FROM Products;
 SELECT * FROM Employees WHERE (Age BETWEEN 30 AND 40) OR Department = 'Marketing';
 SELECT * FROM Employees ORDER BY Salary DESC OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY;
 SELECT * FROM Products WHERE Price <= 1000 AND Stock > 50 ORDER BY Stock ASC;
 SELECT * FROM Products WHERE ProductName LIKE '%e%';
 SELECT * FROM Employees WHERE operator IN ('HR', 'IT', 'Finance');
 SELECT * FROM Customers ORDER BY City ASC, PostalCode DESC;



 SELECT TOP(5) * FROM Products ORDER BY SalesAmount DESC
 SELECT FirstName + ' ' + LastName AS FullName FROM Employees;
 SELECT DISTINCT Category, ProductName, Price FROM Products WHERE Price > 50;
 SELECT * FROM Products WHERE Price < 0.1 * (SELECT AVG(Price) FROM Products);
 SELECT * FROM Employees WHERE Age < 30 AND Department IN ('HR', 'IT');
 SELECT * FROM Customers WHERE Email LIKE '%@gmail.com%';
 SELECT *
FROM Customers
WHERE Email LIKE '%@gmail.com%';
SELECT *
FROM Orders
WHERE OrderDate BETWEEN DATEADD(DAY, -180, GETDATE()) AND GETDATE();
