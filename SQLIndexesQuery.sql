USE shop

--CREATE NONCLUSTERED INDEX IX_name 
--	ON client
--	(
--		last_name ASC,
--		first_name ASC
--	)

--CREATE UNIQUE INDEX IX_phone
--	ON client
--	(
--		phone ASC
--	)

SELECT OBJECT_NAME(T.object_id) AS [table name],
	T.index_id AS [index id],
	TI.name AS [index name],
	T.avg_fragmentation_in_percent AS [fragments]
	FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, NULL) AS T
	LEFT JOIN sys.indexes AS TI
		ON T.object_id = TI.object_id
			AND T.index_id = TI.index_id

ALTER INDEX IX_name ON client
	--REORGANIZE
	REBUILD