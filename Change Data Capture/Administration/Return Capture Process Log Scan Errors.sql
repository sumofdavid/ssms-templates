-- ===============================================
-- Return Capture Process Log Scan Errors Template
-- ===============================================
USE <Database_Name,sysname,Database_Name>
GO

SELECT * FROM [sys].[dm_cdc_errors]
GO