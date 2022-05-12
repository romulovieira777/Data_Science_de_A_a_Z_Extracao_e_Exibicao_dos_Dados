SELECT
	*
FROM
	[DS_TRAINNING].[dbo].[RAW_ClientesAfrica_20170810]
WHERE
	[Column 46] NOT LIKE ''
OR
	[Longitude] NOT LIKE '%.%'
GO