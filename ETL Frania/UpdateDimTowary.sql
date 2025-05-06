ALTER TABLE Dim_Towary
ADD Towar_Hierarchia VARCHAR(50),
    Podgrupa_Hierarchia VARCHAR(50),
    Grupa_Hierarchia VARCHAR(2);
GO

UPDATE Dim_Towary
SET Towar_Hierarchia = Towar + ' ' + Grupa,
    Podgrupa_Hierarchia = Podgrupa + ' ' + Grupa,
    Grupa_Hierarchia = Grupa;
GO

SELECT * FROM Dim_Towary;
