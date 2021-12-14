Select lower(FirstName) Ad, upper(LastName) Soyad from Employees
Select FirstName Ad, len(FirstName) ÝsimUzunlugu from Employees
Select sum(len(FirstName) + len(LastName)) as Toplam_uzunluk from Employees
Select substring(ContactName, charindex(' ', ContactName)+1, len(ContactName)) Contact_SecondName from Customers

select round(min(UnitPrice), 2) enDusukFiyat, round((max(UnitPrice)), 2) enYuksekFiyat from Products 
select max(CompanyName) as EnSondakiMusteri from Customers

select sum(Quantity) as Toplam_Ürün from [Order Details]
select avg(distinct UnitPrice) as ortalam_fiyat from Products where SupplierID=22
select count(Address) AddrNumber from Customers where Address like '%Road%' or Address like '%Rd%'
select count(Address) AddrNumber from Customers where CHARINDEX('Rd', Address) > 0 or CHARINDEX('Road', Address) > 0 

select CURRENT_TIMESTAMP

select abs(datediff(year, '2021-02-12', '2011-02-12'))


select CHARINDEX('om', 'Customer')

select top 5 ProductName, UnitPrice from Products order by UnitPrice desc

select OrderID, CustomerID, abs(datediff(day, ShippedDate, OrderDate)) KacGundeTeslýmEdildi from Orders order by CustomerID desc

select OrderID, abs(datediff(day, RequiredDate, OrderDate)) KacGunGecTeslýmEdildi  from Orders where abs(datediff(day, RequiredDate, OrderDate)) > 0

