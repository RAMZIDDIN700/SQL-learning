

select category,
count (*)  as jamimaxsulot from products1
group by category


select avg(price) as ortachanarx from Products1
where Category='electronics'

select * from Customers1 where city like 'L%'

select * from Products1 where ProductName like '%er'

select * from Customers1 where Country like '%A'

select top 1 price as engqimmat from products1

select * from Products1 

select productname,
 where stockquantity<30 then 'low stock'
 else 'sufficient' end as sufficent
 from products1

 select country, count (*) as jamimijoz from Customers1 group by country

 select min(quantity) as minmiqdor, max(quantity) as maxmiqdor from orders

 select productname from products1 union all select  productname from Products_discounted1

 select productname from products1 union  select  productname from Products_discounted1

 select * from Orders1

 select orderdate as 

 select productname , case when price <100 then 'low'
 when price between 100 and 500 then 'mid'
 else 'high'
 end as pricegroup from Products

 select PRODUCTid, sum(saleamount) as jamisotuv from sales group by ProductID

 select productname from products where productname like '%oo%'

