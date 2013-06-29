-- ===========================================
-- Enumerate All Changes Up Until Now Template
-- ===========================================
USE <Database_Name,sysname,Database_Name>
GO

DECLARE @from_lsn binary(10), @to_lsn binary(10), @end_time datetime
SET @from_lsn =
   sys.fn_cdc_get_min_lsn('<capture_instance,sysname,capture_instance>')
SET @end_time = GETDATE()

DELAY:
	IF (sys.fn_cdc_map_lsn_to_time(sys.fn_cdc_get_max_lsn()) <= @end_time)
	BEGIN
		WAITFOR DELAY '00:01:00'
		GOTO DELAY
	END
	
SET @to_lsn = sys.fn_cdc_map_time_to_lsn('largest less than or equal', @end_time)
SELECT * FROM cdc.fn_cdc_get_all_changes_<capture_instance,sysname,capture_instance>
  (@from_lsn, @to_lsn, N'all')
GO