
select * from Departments
select * from Employees 


select e.name as employeename
  e.salary, d.departmentname
  from employees e
  left join departments d on e.departmentid=d.departmentid
  where e.salary>50000

 select * from Customers
select * from Orders

select c.CustomerName, o.orderdate
from Customers c
inner join Orders o on c.CustomerID=o.CustomerID
where year (o.orderdate)=2023

select * from Employees
select * from  Departments

SELECT 
    e.Name,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
    ON e.DepartmentID = d.DepartmentID
ORDER BY e.Name;
  

select * from Products
select * from  Suppliers

SELECT 
    p.productname,
    s.suppliername
FROM Products p 
LEFT JOIN Suppliers s 
    ON p.supplierID = s.supplierID
ORDER BY p.productname

select * from Orders
select * from  Payments

select o.orderid, o.orderdate, p.paymentid, p.amount, p.paymentdate
from orders o
full outer join Payments p on o.OrderID=p.OrderID

select * from Employees

select e.name as employee
e.managerid as manager
from employees e
left join employees e on e.managerid=m.employeeid

select * from Students
select * from Courses
select * from Enrollments

SELECT 
    s.Name
FROM Students s
INNER JOIN Enrollments e
    ON s.StudentID = e.StudentID
INNER JOIN Courses c
    ON e.CourseID = c.CourseID
WHERE c.CourseName = 'Math 101';

select * from Customers
select * from Orders

SELECT 
    c.FirstName,
    SUM(o.Quantity) AS TotalQuantity
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName
HAVING SUM(o.Quantity) > 3;

SELECT 
    d.DepartmentName,
    COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments d
LEFT JOIN Employees e
    ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

SELECT 
    p.ProductName
FROM Products p
LEFT JOIN Sales s
    ON p.ProductID = s.ProductID
WHERE s.ProductID IS NULL;

SELECT DISTINCT 
    c.Name
FROM Customers c
INNER JOIN Orders o
 ON c.CustomerID = o.CustomerID;

 SELECT 
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d
    ON e.DepartmentID = d.DepartmentID;
