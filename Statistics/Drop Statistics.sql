-- ===========================
-- Drop Statistics Template
-- ===========================
IF EXISTS (
  SELECT *
	FROM sys.stats
	JOIN sys.tables
	  ON sys.stats.object_id = sys.tables.object_id
	JOIN sys.schemas
	  ON sys.tables.schema_id = sys.schemas.schema_id
   WHERE sys.schemas.name = N'<schema_name, sysname, schema_name>'
	 AND sys.tables.name = N'<table_name, sysname, table_name>'
	 AND sys.stats.name = N'<statistics_name, sysname, statistics_name>'
)

DROP STATISTICS <schema_name, sysname, schema_name>.<table_name, sysname, table_name>.<statistics_name, sysname, statistics_name>;
GO
