/* GROUP BY Formula: Select column_name from table_name where condition group by column_name having condition (optional) order by column_name */

select gorev, avg(maas) as ortalama from personel group by gorev /* its database is not exist in this machine! */

select kütüphane_no avg(datediff(day, emanet_tarihi, teslim_tarihi) as ortSure from emanet group by kütüphane_no

select  bolum, gorev, max(maas) , min(maas) from personel group by bolum, gorev  order by bolum 

/* Northwind ---GROUP BY--- examples */
select count(CustomerID) as musteri_sayisi, Country as ulke from Customers group by Country
select count(CustomerID) as musteri_sayisi, Country as ulke from Customers group by Country order by count(*) desc
select count(CustomerID) as musteri_sayisi, Country as ulke from Customers group by Country having count(CustomerID)>5 order by count(*) desc

select ProductID, sum(Quantity) as TOTAL_ORDER_AMOUNT from [Order Details] group by ProductID having sum(Quantity) > 1300 

select City, Title, count(EmployeeID) as 'NUM OF EMPLOYEES' from Employees where City='London' group by City,Title
select Country, City, Title, count(EmployeeID) as 'Num of Employees' from Employees group by Country,City,Title having count(*)>1




/* JOINNING WITH WHERE */
/* FORMULA: SELECT NICKNAME.COULMNNAME, NICKNAME2.COULMNNAME ... FROM TABLE_NAME AS NICKNAME, TABLE_NAME2 AS NICKNAME2 WHERE EQUVALENT */
/*EXAMPLE:*/
SELECT O.OrderID, C.ContactName, DATEPART(YEAR,O.OrderDate) OrderYear from Orders AS O, Customers AS C 
WHERE O.CustomerID = C.CustomerID 
ORDER BY O.OrderDate DESC

/* JOINNING WITH JOIN */
/* JOIN Formula: select * from Table1_name AS nickName JOIN Table2_name AS nickName ON equvalent */

/* Northwind ---JOIN--- examples */
/*INNER JOIN: ONLY COMMON RECORDS/DATA WILL BE LIST/APPEAR IN THE RESULT TABLE!*/

SELECT O.OrderID, C.ContactName, DATEPART(YEAR,O.OrderDate) OrderYear from Orders AS O JOIN Customers AS C 
ON O.CustomerID = C.CustomerID 
ORDER BY O.OrderDate DESC

SELECT * from Orders AS O JOIN Customers AS C 
ON O.CustomerID = C.CustomerID 
ORDER BY O.OrderDate DESC

select * from  Customers AS C JOIN Orders AS O 
ON O.CustomerID = C.CustomerID 
ORDER BY O.OrderDate DESC

select O.ShipAddress SiparisAdress, E.FirstName CalisanAd, E.LastName CalisanSoyad 
from Employees E join Orders O 
on E.EmployeeID = o.EmployeeID 
where year(O.OrderDate) = 1998 and MONTH(O.OrderDate)=3

select C.ContactName MusterıAd, C.Phone telefon 
from Orders O inner join Customers C
on O.CustomerID = C.CustomerID 
where year(O.OrderDate) = 1997

select O.ShipCity SiparisSehri, C.ContactName MusteriAD 
from Orders O join Customers C
on O.CustomerID = C.CustomerID
where O.Freight >= 40 
order by O.ShipCity

select O.OrderDate SiparisTarihi, O.ShipCity Sehir, Upper(E.FirstName + ' ' + E.LastName) [Isci Ad-Soyad]
from Orders O join Employees E
on O.EmployeeID = E.EmployeeID
where year(O.OrderDate) = 1997

select year(O.OrderDate) [Gec Kargolanan Siparisler Tarihi], C.ContactName [Musteri Ad-Soyad], E.FirstName + ' ' + E.LastName [Isci Ad-Soyad]
from Orders O 
join Customers C
on O.CustomerID = C.CustomerID
join Employees E
on O.EmployeeID = E.EmployeeID

select O.OrderDate SiparisTarihi, C.ContactName
from Orders O join Customers C
on O.CustomerID = C.CustomerID
where O.RequiredDate < O.ShippedDate

select P.ProductName UrunAdi, C.CategoryName KategoriAdi, Quantity UrunMiktarı
from Products P
join [Order Details] OD
on P.ProductID = OD.ProductID
join [Categories] C
on P.CategoryID = C.CategoryID
where OD.OrderID=10248

select P.ProductName UrunAdi, S.CompanyName TedarikciAd, C.CategoryName KategoriAd
from Products P
join [Order Details] OD
on P.ProductID = OD.ProductID
join [Categories] C
on P.CategoryID = C.CategoryID
join Suppliers S
on P.SupplierID = S.SupplierID
where OD.OrderID=10248

select P.ProductName UrunAdi, OD.Quantity Adet
from [Order Details] OD
join Products P on P.ProductID = OD.ProductID
join Orders O on O.OrderID = OD.OrderID 
where O.EmployeeID = 3 and year(O.OrderDate) = 1997

/* Work on the bellow query! */
select top E.EmployeeID CalisanID, E.FirstName Ad, E.LastName Soyad
from Employees E join [Order Details] OD
on E.EmployeeID = OD.EmloyeeID
join Orders O on O.OrderId = OD.OrderID
where (OD.UnitPrice * OD.Quantity) and year(O.OrderDate) = 1997
/*LEFT OUTER JOIN */






