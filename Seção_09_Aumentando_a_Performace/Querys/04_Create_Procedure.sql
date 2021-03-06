USE [DS_TRAINNING]
GO
/****** Object:  StoredProcedure [dbo].[SP_WRK_TRANSACOES]    Script Date: 17/05/2022 17:16:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ====================================================================
-- Author:		Rômulo Vieira
-- Create date: 20220517
-- Description:	Procedure que cria a tabela WRK_DRV_CLIENTES_TRANSACOES
-- =====================================================================

CREATE PROCEDURE
	[dbo].[SP_WRK_DRV_CLIENTES_TRANSACOES]
AS
BEGIN

-- =============================================
-- Drop Table
-- =============================================

IF OBJECT_ID('WRK_DRV_CLIENTES_TRANSACOES') IS NOT NULL
DROP TABLE
	[dbo].[WRK_DRV_CLIENTES_TRANSACOES]

-- =============================================
-- Create Table
-- =============================================

CREATE TABLE [dbo].[WRK_DRV_CLIENTES_TRANSACOES]
(
	[RowNumber]   INT IDENTITY
  , [Customer ID] VARCHAR(100)
  , [City]		  VARCHAR(100)
  , [ZipCode]     VARCHAR(10)
  , [Gender]      CHAR(1)
  , [Age]         FLOAT  
  , [Order ID]    VARCHAR(100)
  , [Order Date]  DATE
  , [Region]      VARCHAR(100)
  , [Rep]         VARCHAR(100)
  , [Item]        VARCHAR(100)
  , [Units]       NUMERIC
  , [Unit Price]  FLOAT
)

-- =============================================
-- Tuncate table
-- =============================================

TRUNCATE TABLE
	[dbo].[WRK_DRV_CLIENTES_TRANSACOES]

-- =============================================
-- Inserting data into the table
-- =============================================

INSERT INTO [dbo].[WRK_DRV_CLIENTES_TRANSACOES]
(
	[RowNumber]
  , [Customer ID]
  , [City]
  , [ZipCode]
  , [Gender]
  , [Age]
  , [Order ID]
  , [Order Date]
  , [Region]
  , [Rep]
  , [Item]
  , [Units]
  , [Unit Price]
)
SELECT
	[DS_TRAINNING].[dbo].[WRK_CLIENTES].City
  , [DS_TRAINNING].[dbo].[WRK_CLIENTES].ZipCode
  , [DS_TRAINNING].[dbo].[WRK_CLIENTES].Gender
  , [DS_TRAINNING].[dbo].[WRK_CLIENTES].Age
  , [DS_TRAINNING].[dbo].[WRK_CLIENTES].[Customer ID]
  , [DS_TRAINNING].[dbo].[WRK_TRANSACOES].[Order ID]
  , [DS_TRAINNING].[dbo].[WRK_TRANSACOES].[Order Date]
  , [DS_TRAINNING].[dbo].[WRK_TRANSACOES].Region
  , [DS_TRAINNING].[dbo].[WRK_TRANSACOES].Rep
  , [DS_TRAINNING].[dbo].[WRK_TRANSACOES].Item
  , [DS_TRAINNING].[dbo].[WRK_TRANSACOES].[Unit Price]
FROM
	[DS_TRAINNING].[dbo].[WRK_CLIENTES]
INNER JOIN
	[DS_TRAINNING].[dbo].[WRK_TRANSACOES]
ON
	[DS_TRAINNING].[dbo].[WRK_CLIENTES].[Customer ID] = [DS_TRAINNING].[dbo].[WRK_TRANSACOES].[Customer ID]

END
