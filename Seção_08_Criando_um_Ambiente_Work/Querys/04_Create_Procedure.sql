USE [DS_TRAINNING]
GO
/****** Object:  StoredProcedure [dbo].[SP_WRK_TRANSACOES]    Script Date: 17/05/2022 15:55:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Rômulo Vieira
-- Create date: 20220517
-- Description:	Procedure que cria a tabela WRK_CLIENTES
-- =============================================

CREATE PROCEDURE
	[dbo].[SP_WRK_TRANSACOES]
AS
BEGIN

-- =============================================
-- Drop Table
-- =============================================

IF OBJECT_ID('[WRK_TRANSACOES]') IS NOT NULL
DROP TABLE
	[dbo].[WRK_TRANSACOES]

-- =============================================
-- Create Table
-- =============================================

CREATE TABLE [dbo].[WRK_TRANSACOES]
(
	[RowNumber]   INT IDENTITY
  , [Order ID]	  VARCHAR(100)
  , [Order Date]  DATE
  , [Customer ID] NUMERIC
  , [Region]	  VARCHAR(100)
  , [Rep]		  VARCHAR(100)
  , [Item]		  VARCHAR(100)
  , [Units]		  NUMERIC
  , [Unit Price]  FLOAT
)

-- =============================================
-- Tuncate table
-- =============================================

TRUNCATE TABLE
	[dbo].[WRK_TRANSACOES]

-- =============================================
-- Inserting data into the table
-- =============================================

INSERT INTO [dbo].[WRK_TRANSACOES]
(
	[Order ID]
  , [Order Date]
  , [Customer ID]
  , [Region]
  , [Rep]
  , [Item]
  , [Units]
  , [Unit Price]
)
SELECT
	[Order ID]
  , [Order Date]
  , [Customer ID]
  , [Region]
  , [Rep]
  , [Item]
  , [Units]
  , [Unit Price]
FROM
	[dbo].[RAW_Transacoes_20170811]

END
