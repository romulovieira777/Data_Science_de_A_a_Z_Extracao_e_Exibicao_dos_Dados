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
GO