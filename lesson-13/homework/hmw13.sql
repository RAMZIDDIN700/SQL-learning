
select * from Employees

select concat(employee_id,'-',first_name,' ',last_name) as employee_info
from Employees

update Employees
set phone_number=
replace(phone_number,'124','999')

select first_name,
len(FIRST_NAME) as uzunligi
from Employees
where first_name like 'A%'or first_name like'J%'or first_name like'M%'
order by first_name


select manager_id,sum(salary) as jamimaosh
from Employees
group by MANAGER_ID


select  GREATEST(max1,max2,max3) as kattasi
from TestMax

select * from cinema
where id %2=1 and description!='boring'

select * from SingleOrder
order by case when id=0 then 1 else 0 end,id


select * from person

select coalesce(ssn,passportid,itin) as nullqiymat
from person

select * from Orders
SELECT *
FROM Orders
WHERE CustomerID IN (
    SELECT CustomerID
    FROM Orders
    WHERE DeliveryState = 'California'
)
AND DeliveryState = 'Texas';

