USE DemonBase;
GO

Create Table Person(
	ID int PRIMARY KEY IDENTITY(1, 1),
	Name nvarchar(100),
	CurLocation Geography
);


