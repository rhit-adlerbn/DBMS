Use DemonBase;
GO

Create Table Exorcist(
	ID int PRIMARY KEY References Person(ID),
	Specialty varchar(20),
	Rate money,
	CHECK(Rate >= 0)
);
