-- ==========================================================
-- Return the Captured Columns of a Capture Instance Template
-- ==========================================================
USE <Database_Name,sysname,Database_Name>
GO

DECLARE @captured_columns table (
        source_schema		sysname,
		source_table		sysname,
		capture_instance	sysname,
		column_name			sysname,
	    column_id			int,
		ordinal_position	int,
		data_type			sysname,		
		character_maximum_length int     NULL,
		numeric_precision	tinyint		 NULL,
		numeric_precision_radix smallint NULL,
		numeric_scale		int			 NULL,
		datetime_precision	smallint	 NULL)

INSERT INTO @captured_columns
EXEC [sys].[sp_cdc_get_captured_columns] N'<capture_instance,sysname,capture_instance>'

SELECT ordinal_position, column_name, data_type
FROM @captured_columns
ORDER BY ordinal_position
GO
