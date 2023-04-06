USE DemonBase;
GO

Create Table Customer(
	ID int PRIMARY KEY References Person(ID),
	CreditCardInfo varchar(40) UNIQUE,
	Username varchar(100),
	[Password] varchar(100),
	CHECK(LEN(Password) > 8),
);
