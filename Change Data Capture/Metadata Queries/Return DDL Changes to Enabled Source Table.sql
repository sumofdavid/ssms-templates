-- ==========================================================
-- Return the DDL Changes to an Enabled Source Table Template
-- ==========================================================
USE <Database_Name,sysname,Database_Name>
GO

DECLARE @ddl_history table (
        source_schema		sysname,
		source_table		sysname,
		capture_instance	sysname,
		required_column_update	bit,		
		ddl_command			nvarchar(max),
		ddl_lsn				binary(10),
		ddl_time			datetime)

INSERT INTO @ddl_history
EXEC [sys].[sp_cdc_get_ddl_history]
	N'<capture_instance,sysname,capture_instance>'

SELECT source_schema, source_table, ddl_time, ddl_command
FROM @ddl_history
ORDER BY ddl_time
GO
