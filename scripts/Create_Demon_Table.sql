CREATE TABLE Demon (
  [Name] NVARCHAR(30),
  [Type] NVARCHAR(20) NOT NULL,
  Sigil NVARCHAR(2083) NOT NULL,
  ThreatLevel INT  CHECK (ThreatLevel >= 1 AND ThreatLevel <= 10)  NOT NULL
  Primary Key([Name])
);