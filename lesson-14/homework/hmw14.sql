select * from TestMultipleColumns
SELECT  Id,
    LTRIM(RTRIM(PARSENAME(REPLACE(Name, ',', '.'), 2))) AS FirstName,
    LTRIM(RTRIM(PARSENAME(REPLACE(Name, ',', '.'), 1))) AS LastName
FROM TestMultipleColumns;


SELECT *
FROM TestPercent
WHERE Strs LIKE '%[%]%';
select * from Splitter
SELECT 
    Id,
    LEFT(Vals, CHARINDEX('.', Vals) - 1) AS FirstPart,
    RIGHT(Vals, LEN(Vals) - CHARINDEX('.', Vals)) AS SecondPart
FROM Splitter
WHERE CHARINDEX('.', Vals) > 0;


SELECT 
    VALS,
    TRANSLATE(VALS, '0123456789', 'XXXXXXXXXX') AS MaskedString
FROM GetIntegers;

SELECT *
FROM testDots
WHERE LEN(Vals) - LEN(REPLACE(Vals, '.', '')) > 2;

SELECT 
    texts,
    LEN(texts) - LEN(REPLACE(texts, ' ', '')) AS SpaceCount
FROM CountSpaces;

SELECT 
    e.Name AS Employee,
    e.Salary AS EmployeeSalary,
    m.Name AS Manager,
    m.Salary AS ManagerSalary
FROM Employee e
JOIN Employee m
    ON e.ManagerId = m.Id
WHERE e.Salary > m.Salary;



SELECT
    Vals,
    -- Raqamlarni ajratib olish
    LEFT(Vals, PATINDEX('%[^0-9]%', Vals) - 1) AS Numbers,
    -- Harflarni ajratib olish
    SUBSTRING(Vals, PATINDEX('%[^0-9]%', Vals), LEN(Vals)) AS Characters
FROM rtcfvty34redt
WHERE Vals IS NOT NULL;
