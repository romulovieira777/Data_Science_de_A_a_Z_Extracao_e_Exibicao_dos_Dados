/****** Script for SelectTopNRows command from SSMS  ******/
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
	[DS_TRAINNING].[dbo].[RAW_Transacoes_20170811]
GO