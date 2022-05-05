SELECT
	*
FROM
	[DS_TRAINNING].[DBO].[RAW_ClientesBanco_20170805]
GO


SELECT 
	DISTINCT([Customer ID])
  --, [IdCliente]
  , [Name]
  , [Surname]
  , [Gender]
  , [Age]
  , [Date Joined]
  , [Balance]
FROM
	[DS_TRAINNING].[DBO].[RAW_ClientesBanco_20170805]
GO