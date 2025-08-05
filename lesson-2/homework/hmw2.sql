CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Salary DECIMAL(10,2));
INSERT INTO Employees (EmpID, Name, Salary) VALUES (1, 'Ali', 6000.00); INSERT INTO Employees VALUES (2, 'Vali', 5000.00), (3, 'Hasan', 5500.00);
UPDATE Employees SET Salary = 7000 WHERE EmpID = 1;
DELETE FROM Employees WHERE EmpID = 2;
DELETE – shartga mos yozuvlarni o‘chiradi, lekin jadval qoladi. ROLLBACK mumkin.TRUNCATE – barcha yozuvlarni tezda o‘chiradi, ROLLBACK mumkin emas.DROP – butun jadvalni (strukturasi bilan birga) olib tashlaydi.
ALTER TABLE Employees ALTER COLUMN Name VARCHAR(100);
ALTER TABLE Employees ADD Department VARCHAR(50);
ALTER TABLE Employees ALTER COLUMN Salary FLOAT;
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50));
TRUNCATE TABLE Employees;
INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT 1, 'HR' UNION SELECT 2, 'IT' UNION SELECT 3, 'Finance' UNION SELECT 4, 'Sales' UNION SELECT 5, 'Management';
UPDATE Employees SET Department = 'Management' WHERE Salary > 5000;
TRUNCATE TABLE Employees;
ALTER TABLE Employees DROP COLUMN Department;
EXEC sp_rename 'Employees', 'StaffMembers';
DROP TABLE Departments;
CREATE TABLE Products (ProductID INT PRIMARY KEY,ProductName VARCHAR(100),Category VARCHAR(50),Price DECIMAL(10,2),Description VARCHAR(200));
ALTER TABLE Products ADD CONSTRAINT chk_Price CHECK (Price > 0);
ALTER TABLE Products ADD StockQuantity INT DEFAULT 50;
EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';
INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description) VALUES (1, 'Laptop', 'Electronics', 1200.00, 'Gaming laptop'),(2, 'Chair', 'Furniture', 85.50, 'Office chair'),(3, 'Book', 'Stationery', 15.75, 'Notebook'),(4, 'Phone', 'Electronics', 850.00, 'Smartphone'),(5, 'Table', 'Furniture', 150.00, 'Wooden table');
SELECT * INTO Products_Backup FROM Products;
EXEC sp_rename 'Products', 'Inventory';
ALTER TABLE Inventory ALTER COLUMN Price FLOAT;
ALTER TABLE Inventory ADD ProductCode INT IDENTITY(1000,5);
