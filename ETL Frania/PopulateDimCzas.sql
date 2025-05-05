SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

DROP PROCEDURE dbo.sPopulateDimCzas;
GO

-- Tworzenie procedury
CREATE PROCEDURE dbo.sPopulateDimCzas
AS
BEGIN
    SET NOCOUNT ON;

    -- Usuwamy poprzednie dane (truncowanie odpada przy PK z FK)
    DELETE FROM Dim_Czas;

    DECLARE @rok INT = 2004;
    DECLARE @miesiac INT = 1;
    DECLARE @id CHAR(6);

    WHILE @rok <= 2020
    BEGIN
        WHILE @miesiac <= 12
        BEGIN
            -- Generujemy Id w formacie MMyyyy, np. 012004
            SET @id = RIGHT('0' + CAST(@miesiac AS VARCHAR(2)), 2) + CAST(@rok AS CHAR(4));

            INSERT INTO Dim_Czas (Id, Miesiac, Kwartal, Rok)
            VALUES (
                @id,
                @miesiac,
                CEILING(@miesiac / 3.0),
                @rok
            );

            SET @miesiac = @miesiac + 1;
        END

        SET @miesiac = 1;
        SET @rok = @rok + 1;
    END
END
GO
