-- ==========================================
-- Grant Permission on Server Role template
-- ==========================================
USE [master]
GO

-- Grant access rights on a specific server role on the server
GRANT
	ALTER,
	CONTROL,
	TAKE OWNERSHIP,
	VIEW DEFINITION
ON SERVER ROLE :: [<server_role_name, sysname, Server_Role_Name>]
	TO [<server_principal_to, sysname, Server_Principal_Name>]	
	WITH GRANT OPTION
	AS [<server_principal_as, sysname, Server_Principal_Name>]
GO
