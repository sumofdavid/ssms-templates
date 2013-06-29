-- =====================================================
-- Determine Whether a Table is Enabled for CDC Template
-- =====================================================
USE <Database_Name,sysname,Database_Name>
GO

SELECT is_tracked_by_cdc FROM sys.tables
WHERE object_id = object_id(N'<source_schema,sysname,source_schema>.<source_name,sysname,source_name>')
GO


