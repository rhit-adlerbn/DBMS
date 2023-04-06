CREATE TABLE Effects(
	EquipID int,
	DemonName varchar(30),
	EffectDescription varchar(300),
	PRIMARY KEY(EquipID, DemonName),
	FOREIGN KEY(EquipID) REFERENCES Equipment(ID),
	FOREIGN KEY(DemonName) REFERENCES Demon(Name)
)