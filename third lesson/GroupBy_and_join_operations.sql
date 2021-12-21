/* GROUP BY Formula: Select column_name from table_name where condition group by column_name having condition (optional) order by column_name */

select gorev, avg(maas) as ortalama from personel group by gorev /* its database is not exist in this machine! */

select kütüphane_no avg(datediff(day, emanet_tarihi, teslim_tarihi) as ortSure from emanet group by kütüphane_no

select  bolum, gorev, max(maas) , min(maas) from personel group by bolum, gorev  order by bolum 

/* Northwind ---GROUP BY--- examples */
select count(CustomerID) as musteri_sayisi, Country as ulke from Customers group by Country
select count(CustomerID) as musteri_sayisi, Country as ulke from Customers group by Country order by count(*) desc
select count(CustomerID) as musteri_sayisi, Country as ulke from Customers group by Country having count(CustomerID)>5 order by count(*) desc

select ProductID, sum(Quantity) as toplam_sipariþ_miktari from [Order Details] group by ProductID having sum(Quantity) > 1300 

select City, Title, count(EmployeeID) as 'Ýþçi sayýsý' from Employees where City='London' group by City,Title
select Country, City, Title, count(EmployeeID) as 'Num. of Employees' from Employees group by Country,City,Title having count(*)>1

/* JOINNING WITH WHERE */
select Orders.OrderID, Customers.ContactName, Orders.OrderDate from Orders, Customers where Orders.CustomerID=Customers.CustomerID


/* JOIN Formula: select * from Table1_name AS nickName join Table2_name AS nickName ON equvalent */
/* Northwind ---JOIN--- examples */




