-- =========================================================
-- Enumerate All Changes Since the Previous Request Template
-- =========================================================
USE <Database_Name,sysname,Database_Name>
GO

DECLARE @from_lsn binary(10), @to_lsn binary(10), @previous_to_lsn binary(10)
SET @previous_to_lsn = <previous_to_lsn,binary(10),previous_to_lsn>
SET @from_lsn = sys.fn_cdc_increment_lsn(@previous_to_lsn)
SET @to_lsn   = sys.fn_cdc_get_max_lsn()
SELECT * FROM cdc.fn_cdc_get_all_changes_<capture_instance,sysname,capture_instance>
  (@from_lsn, @to_lsn, N'all')
GO