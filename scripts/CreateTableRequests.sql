CREATE TABLE Requests(
	DemonName varchar(30),
	EID int,
	CID int,
	RequestDatetime Datetime,
	Result varchar(10),
	Location varchar(50),
	Cost money,
	PRIMARY KEY(DemonName, EID, CID),
	FOREIGN KEY(DemonName) REFERENCES Demon(Name),
	FOREIGN KEY(EID) REFERENCES Exorcist(ID),
	FOREIGN KEY(CID) REFERENCES Customer(ID),
	CHECK(Cost >= 0)
)