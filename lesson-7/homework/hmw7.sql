select min(price) as minprice from Products
select max(salary) as maxsalary from Employees
select count(*) as customercount from Customers
select count(distinct category) as uniquecategories from Products
select sum(saleamount) as totalsales from sales where ProductID=7
select avg(age) as ortachayosh from Employees
select departmentname, count(*) as xodimlarsoni from Employees group by DepartmentName 
select category, min(price) as minprice, max(price) as maxprice from Products group by Category
select customerid, sum(saleamount) as totalsales from sales group by CustomerID
select departmentname, count(*) as jamixodim from Employees group by DepartmentName having count(*) >5

select * from Employees

SELECT Category, SUM(SaleAmount) AS jamisavdo, AVG(SaleAmount) AS ortachasavdo
FROM Sales 

SELECT COUNT(*) AS hrxodimlarsoni FROM Employees WHERE DepartmentName = 'HR';
SELECT DepartmentName, MAX(Salary) AS engkatta, MIN(Salary) AS engkichik FROM Employees GROUP BY DepartmentName;
SELECT DepartmentName, avg(salary) AS ortachaoylik from Employees GROUP BY DepartmentName
SELECT DepartmentName, avg(Salary) AS ortachaoylik, count(*) AS ishchisoni FROM Employees GROUP BY DepartmentName
SELECT Category, AVG(Price) AS ortachanarx FROM Products GROUP BY Category
HAVING AVG(Price) > 400;
SELECT CustomerID, COUNT(*) AS buyurtmaberganlar FROM Orders GROUP BY CustomerID HAVING COUNT(*) >= 3;
SELECT DepartmentName, avg(salary) AS ortachaoylik from Employees GROUP BY DepartmentName having avg(salary)>60000


select category, avg(price) as ortachanarx,  from Products group by Category having avg(price)>150
SELECT CustomerID, SUM(SaleAmount) AS jamisavdo FROM Sales group by CustomerID having sum(saleamount)>1500
SELECT DepartmentName, sum(salary) AS jamioylik avg(salary) as ortachaoylik from Employees GROUP BY DepartmentName having avg(salary)>65000
SELECT YEAR(OrderDate) AS OrderYear, MIN(Quantity) AS MinQuantity, MAX(Quantity) AS MaxQuantity FROM Orders
GROUP BY YEAR(OrderDate);
