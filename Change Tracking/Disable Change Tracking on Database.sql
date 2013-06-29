-- =============================================
-- Alter database with Disable change tracking template
-- =============================================
USE master
GO

ALTER DATABASE <Database_Name,sysname,Database_Name> SET CHANGE_TRACKING = OFF
GO