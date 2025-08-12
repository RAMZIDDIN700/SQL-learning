SELECT ProductName AS Name
FROM Products;
SELECT *
FROM Customers AS Client;

SELECT ProductName
FROM Products
UNION
SELECT ProductName
FROM Products_Discounted;

SELECT ProductName
FROM Products
INTERSECT
SELECT ProductName
FROM Products_Discounted;
 select distinct firstname,lastname,country from customers

 SELECT ProductName,
       CASE 
           WHEN Price > 1000 THEN 'High'
           ELSE 'Low'
       END AS PriceCategory
FROM Products;

SELECT ProductName,
       IIF(StockQuantity > 100, 'Yes', 'No') AS StockOver100
FROM Products_Discounted;
SELECT ProductName FROM Products
UNION
SELECT ProductName FROM Products_Discounted;

SELECT ProductName
FROM Products
EXCEPT
SELECT ProductName
FROM Products_Discounted;
SELECT ProductName,
       IIF(Price > 1000, 'Expensive', 'Affordable') AS PriceLevel
FROM Products;

select * from Employees where age <25 or salary> 60000

update Employees set salary= salary * 10%
where department='hr' or EmployeeID=5

SELECT SaleID, SaleAmount,
       CASE
           WHEN SaleAmount > 500 THEN 'Top Tier'
           WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Mid Tier'
           ELSE 'Low Tier'
       END AS SaleCategory
FROM Sales;
