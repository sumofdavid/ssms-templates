-- =====================================
-- Add Linked Server Simplet template
-- =====================================

-- Create linked server reference to Database Engine instance on same machine
EXEC master.dbo.sp_addlinkedserver @server = N'<server_name,sysname,(local)><instance_name,sysname,\SQLEXPRESS>', @srvproduct=N'SQL Server'
GO

-- Use current login's security context for the link
EXEC master.dbo.sp_addlinkedsrvlogin @rmtsrvname = N'<server_name,sysname,(local)><instance_name,sysname,\SQLEXPRESS>', @locallogin = NULL , @useself = N'True'
GO

-- Run a test query
SELECT * FROM [<server_name,sysname,(local)><instance_name,sysname,\SQLEXPRESS>].<database_name,sysname,pubs>.<schema_name,sysname,dbo>.<table_name,sysname,authors>
GO
