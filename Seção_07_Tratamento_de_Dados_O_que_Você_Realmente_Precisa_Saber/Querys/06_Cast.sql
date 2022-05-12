SELECT
	10 + 10
GO


SELECT
	'10' + '10'
GO


SELECT
	10 + '10'
GO


-- Convertendo para float, porque os dados importados foram todos em string
SELECT
	*
FROM
	[DS_TRAINNING].[dbo].[RAW_TRANSACOES_20170811]
ORDER BY
	CAST([Unit Price] AS FLOAT)
GO


SELECT
	*
FROM
	[DS_TRAINNING].[dbo].[RAW_TRANSACOES_20170811]
ORDER BY
	CONVERT(FLOAT, [Unit Price])
GO