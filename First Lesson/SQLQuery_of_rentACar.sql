CREATE DATABASE Arac_Kiralama

USE Arac_Kiralama
CREATE TABLE Musteri(
mkod int Primary Key,
mad nvarchar(30),
msoyad nvarchar(50),
madres nvarchar(100),
mtel nvarchar(30)
)

USE Arac_Kiralama
CREATE TABLE Kiralama(
mkod int primary key identity(1,1),
mkod aracno Constraint fkey ON Update Cascade on Update Cascade,
tarih nvarchar(10),
saat time,

)

USE Arac_Kiralama
CREATE TABLE Arac(
arac_no int PRIMARY KEY,
model int Constraint Check()
)

