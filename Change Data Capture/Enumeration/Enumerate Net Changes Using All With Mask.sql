-- ==================================================
-- Enumerate Net Changes Using All With Mask Template
-- ==================================================
USE <Database_Name,sysname,Database_Name>
GO

DECLARE @from_lsn binary(10),
	@to_lsn binary(10),
	@column_ordinal int

SET @from_lsn =
   sys.fn_cdc_get_min_lsn('<capture_instance,sysname,capture_instance>')
SET @to_lsn   = sys.fn_cdc_get_max_lsn()
SET @column_ordinal = sys.fn_cdc_get_column_ordinal
	(N'<capture_instance,sysname,capture_instance>',
	 N'<column_name,sysname,column_name>')

SELECT *,
	sys.fn_cdc_is_bit_set(@column_ordinal, __$update_mask)
		AS <column_name,sysname,column_name>_changed
FROM cdc.fn_cdc_get_net_changes_<capture_instance,sysname,capture_instance>
  (@from_lsn, @to_lsn, N'all with mask')
GO
