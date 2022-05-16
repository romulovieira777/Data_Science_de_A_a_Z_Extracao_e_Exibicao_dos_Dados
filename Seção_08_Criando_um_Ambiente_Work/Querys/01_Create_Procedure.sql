SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

USE DS_TRAINNING
GO

-- =============================================
-- Author:		Rômulo Vieira
-- Create date: 20220516
-- Description:	Procedure que cria a tabela WRK_CLIENTES
-- =============================================

ALTER PROCEDURE
	SP_WRK_CLIENTES	
AS
BEGIN

-- =============================================
-- Drop Table
-- =============================================

IF OBJECT_ID('[WRK_CLIENTES]') IS NOT NULL
DROP TABLE
	[DS_TRAINNING].[dbo].[WRK_CLIENTES]

-- =============================================
-- Create Table
-- =============================================

CREATE TABLE WRK_CLIENTES
(
	[RowNumber]   INT IDENTITY
  , [Customer ID] VARCHAR(100)
  , [City]        VARCHAR(100)
  , [ZipCode]	  VARCHAR(10)
  , [Gender]      CHAR(1)
  , [Age]         FLOAT
)

-- =============================================
-- Tuncate table
-- =============================================

TRUNCATE TABLE
	[DS_TRAINNING].[dbo].[WRK_CLIENTES]

-- =============================================
-- Inserting data into the table
-- =============================================

INSERT INTO [DS_TRAINNING].[dbo].[WRK_CLIENTES]
(
	[Customer ID]
  , [City]
  , [ZipCode]
  , [Gender]
  , [Age]
)
SELECT
	[Customer ID]
  , [City]
  , [ZipCode]
  , [Gender]
  , [Age]
FROM
	[DS_TRAINNING].[dbo].[RAW_Clientes_20170811]

END
GO
