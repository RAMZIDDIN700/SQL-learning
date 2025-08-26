(34, 4, 5, '2023-06-27', 300.00),
(35, 5, 6, '2024-11-19', 350.00),
(36, 6, 7, '2022-05-23', 400.00),
(37, 7, 8, '2025-08-16', 450.00),
(38, 8, 9, '2021-04-12', 500.00),
(39, 9, 10, '2023-09-03', 550.00),
(40, 10, 1, '2024-07-07', 600.00);



select * from Orders
select * from Customers

SELECT 
  o.OrderID,
    c.FirstName,
    o.OrderDate
FROM 
    Orders o
INNER JOIN 
    Customers c
    ON o.CustomerID = c.CustomerID
WHERE 
    YEAR(o.OrderDate) > 2022


	select * from Employees
	SELECT 
    e.Name,
    d.DepartmentName
FROM 
    Employees e
INNER JOIN 
    Departments d
    ON e.DepartmentID = d.DepartmentID
WHERE 
    d.DepartmentName IN ('Sales', 'Marketing')


	select * from Departments
	select * from Employees

	select 
	 d.departmentname, max(e.salary) as maxsalary
	 from
	 Departments d
	 inner join 
	 Employees e 
	 on d.DepartmentID=e.DepartmentID
	 group by d.DepartmentName

	 select 
	 c.firstname,o.orderid,o.orderdate
	 from Customers c
	 inner join 
	 orders o on c.customerid=o.customerid
	 where c.country='usa' and year(o.orderdate)=2023

	 select * from Orders
	 select * from Customers

	 select
	 c.firstname,
	 count(o.orderid) as totalorders
	 from customers c
	 left join orders o on c.customerid=o.customerid

	  select * from Products
	 select * from Suppliers

	 select
	 p.productname,s.suppliername
	 from Products p
	 inner join Suppliers s on p.ProductID=s.SupplierID
	 where s.SupplierName in ('gadget supplies','clothing mart')

	  


	 select c.firstname, count(o.orderid) as o.ordertotal
	 from Orders o
	 inner join Customers c on o.CustomerID=c.CustomerID
	 where o.ordertotal >500


	 select * from Products
	 select * from Sales

	 select p.productname,s.saledate,s.saleamount
	 from sales s
	 inner join Products p on p.ProductID=s.ProductID
	 where year(saledate)=2022 or SaleAmount>400

	  select * from Employees
	 select * from Departments

	 select
	 e.name,d.departmentname,e.salary
	 from Employees e
	 inner join Departments d 
	 on e.EmployeeID=d.DepartmentID
	 where salary>60000 and d.DepartmentName='hr'


	 
	  select * from Products
	 select * from Sales

	 select 
	 p.ProductName,s.saledate,p.stockquantity
	 from Products p
	 inner join Sales s on p.ProductID=s.SaleID
	 where year(s.saledate)=2023 and p.StockQuantity>100
