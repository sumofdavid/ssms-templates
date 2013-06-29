-- ==========================================================
-- Get Net Changes Using a Wrapper With Update Flags Template
-- ==========================================================
USE <Database_Name,sysname,Database_Name>
GO

SELECT * FROM fn_net_changes_<capture_instance,sysname,capture_instance>
  (NULL, NULL, N'all with mask')
GO
