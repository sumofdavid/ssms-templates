-- ==============================
-- Drop Linked Server template
-- ==============================

-- Drops a linked server reference to a Database Engine instance
-- Related logins will also be dropped in this example
EXEC master.dbo.sp_dropserver @server=N'<server_name,sysname,(local)><instance_name,sysname,\SQLEXPRESS>', @droplogins='droplogins'
GO