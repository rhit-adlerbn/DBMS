CREATE TABLE Equipment(
	ID int IDENTITY(1,1),
	Cost money,
	PRIMARY KEY(ID),
	CHECK(Cost >= 0)
)