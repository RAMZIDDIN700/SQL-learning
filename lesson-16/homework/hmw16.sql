
select * from Numbers


WITH Numbers AS (
SELECT 1 AS num
UNION ALL
SELECT num + 1 FROM Numbers WHERE num < 100
)
SELECT * FROM Numbers;


select * from Sales
select * from Employees


SELECT E.FirstName, E.LastName, T.TotalSales
FROM Employees E
JOIN (
    SELECT EmployeeID, SUM(SalesAmount) AS TotalSales
    FROM Sales
    GROUP BY EmployeeID
) AS T ON E.EmployeeID = T.EmployeeID;


with avgsalary as (
select avg(salary) as averagesalary from Employees)
select * from avgsalary



select * from Sales
select * from Products



select P.Productname,T.maxsale
from Products p
join (
select productid,max(salesamount) as maxsale
from Sales
group by ProductID) as t on p.ProductID=t.ProductID


WITH doubles AS (
SELECT 1 AS num
UNION ALL
SELECT num * 2 FROM doubles WHERE num * 2 < 1000000
)
SELECT * FROM doubles;


select * from Sales
select * from Employees

WITH SalesCount AS (
    SELECT EmployeeID, COUNT(*) AS SaleCount
    FROM Sales
    GROUP BY EmployeeID
)
SELECT E.FirstName, E.LastName
FROM Employees E
JOIN SalesCount S ON E.EmployeeID = S.EmployeeID
WHERE S.SaleCount > 5;



select * from Sales
select * from Products


WITH ProductSales AS (
    SELECT ProductID, SUM(SalesAmount) AS TotalSales
    FROM Sales
    GROUP BY ProductID
)
SELECT P.ProductName, PS.TotalSales
FROM Products P
JOIN ProductSales PS ON P.ProductID = PS.ProductID
WHERE PS.TotalSales > 500;


select * from Employees

with avgsalary as (
select avg(salary) as averagesalary
from Employees)
select E.Firstname,E.Lastname,E.Salary
from Employees e
join avgsalary a on e.Salary>a.averagesalary


SELECT TOP 5 E.FirstName, E.LastName, T.OrderCount
FROM (
    SELECT EmployeeID, COUNT(*) AS OrderCount
    FROM Sales
    GROUP BY EmployeeID
) AS T
JOIN Employees E ON T.EmployeeID = E.EmployeeID
ORDER BY T.OrderCount DESC;
