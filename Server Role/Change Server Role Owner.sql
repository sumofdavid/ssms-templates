-- =====================================
-- Change owning principal template
-- =====================================
USE [master]
GO

-- Alter the server principal that owns the server role
ALTER AUTHORIZATION ON SERVER ROLE :: [<server_role_name, sysname, Server_Role_Name>]
TO [<server_principal, sysname, sa>]
GO
