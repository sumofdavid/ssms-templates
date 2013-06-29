-- ========================================================
-- Determine Whether a Database is Enabled for CDC Template
-- ========================================================
USE <Database_Name,sysname,Database_Name>
GO

SELECT is_cdc_enabled FROM sys.databases
WHERE name = N'<Database_Name,sysname,Database_Name>'
GO


