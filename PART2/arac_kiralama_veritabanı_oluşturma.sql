CREATE DATABASE ARAC_KIRALAMA

USE ARAC_KIRALAMA
CREATE TABLE musteri(
	mkod int PRIMARY KEY,
	mad nvarchar(50) NOT NULL,
	msoyad nvarchar(50) NOT NULL,
	madres varchar(255),
	mtel varchar(15)
)

USE ARAC_KIRALAMA
CREATE TABLE arac(
	aracno int NOT NULL PRIMARY KEY,
	model int NOT NULL,
	marka varchar(50),
	plaka varchar(25),
	fiyat varchar(15),
	CONSTRAINT chkmodel CHECK (model LIKE '[1-2][0-9][0-9][0-9]')
)

USE ARAC_KIRALAMA
CREATE TABLE kiralama(
	mkod int NOT NULL,
	aracno int NOT NULL,
	tarih datetime NOT NULL DEFAULT GETDATE(),
	saat varchar(8),
	tes_tarih varchar(8),
	CONSTRAINT fk_mkod FOREIGN KEY(mkod) REFERENCES musteri(mkod) 
									ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_aracno FOREIGN KEY(aracno) REFERENCES arac(aracno)
									ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT pkkey PRIMARY KEY(mkod, aracno)
)