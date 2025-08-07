bulk insert bu - sql serverda tashqi fayldan katta hajmdagi malumotlarni jadvalga tezda yuklash buyrugidir  
1).csv( vergul bilan ajratilgan fayl ), 2).txt(oddiy matnli fayl) 3) .xml(strukturaviy matn),4).json(javascript obyekt korinishidagi fayl) 
CREATE TABLE Products (ProductID INT PRIMARY KEY,ProductName VARCHAR(50),Price DECIMAL(10,2));
INSERT INTO Products (ProductID, ProductName, Price)VALUES (1, 'Noutbuk', 850.00),(2, 'Sichqoncha', 25.50),(3, 'Klaviatura', 45.00);
null-qiymat yoqligini bildiradi(nomalum yoki mavjud emas), not null-bu ustunda albatta qiymat bolishi kerakligini bildiradi
ALTER TABLE Products ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName);
select * from products where price> 100
alter table products add categoryID int;
create table categories (categoryID int primary key, categoryname varchar(50) unique);
identity ustuni avtomatik tarzda ozgaruvchan tartib raqamini hosil qiladi, kopincha asosiy kalitlar (ID) uchun ishlatiladi. masalan: identity(1,1)-1dan boshlanib 1 ga oshib boradi
BULK INSERT Products FROM 'C:\Data\products.txt'WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n', FIRSTROW = 2);
ALTER TABLE Products ADD CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID);
primary key null qabul qilmaydi,unique esa 1 marta qabul qiladi;primary key bir jadvalda faqat 1ta,unique esa bir nechta bolishi mumkin;maqsadi primary key unikal identifikatsiya, unique esa unikal qiymat saqlaydi
ALTER TABLE Products ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);
ALTER TABLE Products ADD Stock INT NOT NULL DEFAULT 0;
SELECT ProductID, ProductName, ISNULL(Price, 0) AS Price FROM Products;
foreign key boshqa jadvaldagi asosiy kalitga boglangan ustundir.bu malumotlar mos va ishonchli bolishini taminlaydi
CREATE TABLE Customers ( CustomerID INT PRIMARY KEY,CustomerName VARCHAR(50),Age INT CHECK (Age >= 18));
CREATE TABLE Codes (CodeID INT IDENTITY(100,10) PRIMARY KEY,CodeName VARCHAR(50));
CREATE TABLE OrderDetails (OrderID INT,ProductID INT,Quantity INT,PRIMARY KEY (OrderID, ProductID));
1) isnull faqat 2 ta qiymat qabul qiladi: agar birinchisi null bolsa ikkinchisini qaytaradi. 2)coalesce esa bir nechta qiymatdan birinchi null bolmaganini qaytaradi.kengroq ishlatiladi
CREATE TABLE Employees ( EmpID INT PRIMARY KEY,EmpName VARCHAR(50),Email VARCHAR(100) UNIQUE);
ALTER TABLE Products ADD CONSTRAINT FK_Products_Categories_Cascade FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID) ON DELETE CASCADE ON UPDATE CASCADE;
