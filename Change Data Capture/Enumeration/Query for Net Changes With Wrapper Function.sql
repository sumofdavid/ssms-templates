-- ======================================================
-- Query for Net Changes With a Wrapper Function Template
-- ======================================================
USE <Database_Name,sysname,Database_Name>
GO

SELECT * FROM fn_net_changes_<capture_instance,sysname,capture_instance>
  (NULL, NULL, N'all')
GO
