-- ==================================================
-- Enumerate Net Changes for the Valid Range Template
-- ==================================================
USE <Database_Name,sysname,Database_Name>
GO

DECLARE @from_lsn binary(10), @to_lsn binary(10)
SET @from_lsn =
   sys.fn_cdc_get_min_lsn('<capture_instance,sysname,capture_instance>')
SET @to_lsn   = sys.fn_cdc_get_max_lsn()
SELECT * FROM cdc.fn_cdc_get_net_changes_<capture_instance,sysname,capture_instance>
  (@from_lsn, @to_lsn, N'all')
GO
