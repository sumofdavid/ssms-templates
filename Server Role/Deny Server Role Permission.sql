-- ==========================================
-- Deny Permission on Server Role template
-- ==========================================
USE [master]
GO

-- Deny access rights on a specific server role on the server
DENY
	ALTER,
	CONTROL,
	TAKE OWNERSHIP,
	VIEW DEFINITION
ON SERVER ROLE :: [<server_role_name, sysname, Server_Role_Name>]
	TO [<server_principal_to, sysname, Server_Principal_Name>]	
	CASCADE
	AS [<server_principal_as, sysname, Server_Principal_Name>]
GO
