-- ===============================================
-- Disable a Capture Instance for a Table Template
-- ===============================================
USE <Database_Name,sysname,Database_Name>
GO

EXEC sys.sp_cdc_disable_table
	@source_schema = N'<source_schema,sysname,source_schema>',
	@source_name   = N'<source_name,sysname,source_name>',
	@capture_instance = N'<capture_instance,sysname,capture_instance>'
GO
