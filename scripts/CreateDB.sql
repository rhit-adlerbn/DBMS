CREATE DATABASE DemonBase
ON (NAME = DemonBase_dat,
FILENAME = 'D:\Database\MSSQL15.MSSQLSERVER\MSSQL\DATA\DemonBase.mdf',
SIZE = 10,
MAXSIZE = 30,
FILEGROWTH = 10)
LOG ON (NAME = [DemonBase_log],
FILENAME = 'D:\Database\MSSQL15.MSSQLSERVER\MSSQL\DATA\DemonBase.ldf',
SIZE = 5,
MAXSIZE = 20,
FILEGROWTH = 20)

USE DemonBase
GO

CREATE USER petersa2 FOR LOGIN petersa2
EXEC sp_addrolemember N'db_owner', N'petersa2'

CREATE USER adlerbn FOR LOGIN adlerbn
EXEC sp_addrolemember N'db_owner', N'adlerbn'