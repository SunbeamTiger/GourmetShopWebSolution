USE [GourmetShop]
GO

/****** Object:  StoredProcedure [dbo].[LOGIN]    Script Date: 4/26/2023 7:38:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[LOGIN]
@User VARCHAR(20),
@Pass VARCHAR (20)
AS

BEGIN

SELECT [LastName],[FirstName],[City],ISNULL([Vists], 0) FROM  Customer 
WHERE Username = @User AND @Pass = Pass;

END
GO

