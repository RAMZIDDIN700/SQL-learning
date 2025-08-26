INSERT INTO Sales (SaleID, ProductID, CustomerID, SaleDate, SaleAmount) VALUES
(1, 1, 1, '2023-01-01', 150.00),
(2, 2, 2, '2023-01-02', 200.00),
(3, 3, 3, '2023-01-03', 250.00),
(4, 4, 4, '2023-01-04', 300.00),
(5, 5, 5, '2023-01-05', 350.00),
(6, 6, 6, '2023-01-06', 400.00),
(7, 7, 7, '2023-01-07', 450.00),
(8, 8, 8, '2023-01-08', 500.00),
(9, 9, 9, '2023-01-09', 550.00),
(10, 10, 10, '2023-01-10', 600.00),
(11, 1, 1, '2023-01-11', 150.00),
(12, 2, 2, '2023-01-12', 200.00),
(13, 3, 3, '2023-01-13', 250.00),
(14, 4, 4, '2023-01-14', 300.00),
(15, 5, 5, '2023-01-15', 350.00),
(16, 6, 6, '2023-01-16', 400.00),
(17, 7, 7, '2023-01-17', 450.00),
(18, 8, 8, '2023-01-18', 500.00),
(19, 9, 9, '2023-01-19', 550.00),
(20, 10, 10, '2023-01-20', 600.00),
(21, 1, 2, '2023-01-21', 150.00),
(22, 2, 3, '2023-01-22', 200.00),
(23, 3, 4, '2023-01-23', 250.00),
(24, 4, 5, '2023-01-24', 300.00),
(25, 5, 6, '2023-01-25', 350.00),
(26, 6, 7, '2023-01-26', 400.00),
(27, 7, 8, '2023-01-27', 450.00),
(28, 8, 9, '2023-01-28', 500.00),
(29, 9, 10, '2023-01-29', 550.00),
(30, 10, 1, '2023-01-30', 600.00),
(31, 1, 2, '2023-02-01', 150.00),
(32, 2, 3, '2023-02-02', 200.00),
(33, 3, 4, '2023-02-03', 250.00),
(34, 4, 5, '2023-02-04', 300.00),
(35, 5, 6, '2023-02-05', 350.00),
(36, 6, 7, '2023-02-06', 400.00),
(37, 7, 8, '2023-02-07', 450.00),
(38, 8, 9, '2023-02-08', 500.00),
(39, 9, 10, '2023-02-09', 550.00),
(40, 10, 1, '2023-02-10', 600.00);



select * from Products
select * from Suppliers


SELECT p.ProductName, s.SupplierName
FROM Products p
cross JOIN Suppliers s ;

select * from Departments
select * from Employees

SELECT d.departmentname, e.name
FROM Employees e
cross JOIN Departments d 

SELECT p.ProductName, s.SupplierName
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID;
select * from Customers
SELECT 
    c.FirstName,
    o.OrderID
FROM 
    Customers c
INNER JOIN 
    Orders o
    ON c.CustomerID = o.CustomerID;

select * from Students
select * from Courses

SELECT s.name, c.coursename
FROM courses c
cross JOIN Students s

select * from Products
select * from Orders

SELECT 
    p.ProductName,
    o.OrderID
FROM 
    Products p
INNER JOIN 
    Orders o
    ON p.ProductID = o.ProductID;


SELECT 
    e.Name,
    d.DepartmentName
FROM 
    Employees e
INNER JOIN 
    Departments d
    ON e.DepartmentID = d.DepartmentID;

	SELECT 
    s.Name,
    e.CourseID
FROM 
    Students s
INNER JOIN 
    Enrollments e
    ON s.StudentID = e.StudentID;

select * from Payments
select * from Orders

SELECT 
    o.OrderID,
    p.PaymentID,
FROM 
    Orders o
INNER JOIN 
    Payments p
    ON o.OrderID = p.OrderID;

	
select * from Products
select * from Orders

SELECT 
    o.OrderID,
    p.ProductName,
    p.Price
FROM 
    Orders o
INNER JOIN 
    Products p
    ON o.ProductID = p.ProductID
WHERE 
    p.Price > 100;


	SELECT 
    o.OrderID,
    p.ProductName,
    o.Quantity,
    p.StockQuantity
FROM 
    Orders o
INNER JOIN 
    Products p
    ON o.ProductID = p.ProductID
WHERE 
    o.Quantity > p.StockQuantity;
