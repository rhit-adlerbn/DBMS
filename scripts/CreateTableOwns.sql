CREATE TABLE OWNS(
	EquipID int,
	ExorcistID int,
	PRIMARY KEY(EquipID, ExorcistID),
	FOREIGN KEY(EquipID) REFERENCES Equipment(ID),
	FOREIGN KEY(ExorcistID) REFERENCES Exorcist(ID),
)