-- ===================================================
-- Return Capture Process Log Scan Statistics Template
-- ===================================================
USE <Database_Name,sysname,Database_Name>
GO

SELECT * FROM [sys].[dm_cdc_log_scan_sessions]
GO