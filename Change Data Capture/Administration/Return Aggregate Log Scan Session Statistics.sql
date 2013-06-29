-- =====================================================
-- Return Aggregate Log Scan Session Statistics Template
-- =====================================================
USE <Database_Name,sysname,Database_Name>
GO

SELECT * FROM [sys].[dm_cdc_log_scan_sessions]
WHERE session_id = 0
GO
	
	