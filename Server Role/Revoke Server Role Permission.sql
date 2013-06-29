-- ==========================================
-- Revoke Permission on Server Role template
-- ==========================================
USE [master]
GO

-- Revoke access rights on a specific server role on the server
REVOKE GRANT OPTION FOR
	ALTER,
	CONTROL,
	TAKE OWNERSHIP,
	VIEW DEFINITION
ON SERVER ROLE :: [<server_role_name, sysname, Server_Role_Name>]
	TO [<server_principal_to, sysname, Server_Principal_Name>]	
	CASCADE
	AS [<server_principal_as, sysname, Server_Principal_Name>]
GO