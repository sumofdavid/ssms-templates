-- ===================================================
-- Create User as DBO template for SQL Azure Database
-- ===================================================

CREATE USER <user_name, sysname, user_name>	
GO

-- Add user to the database owner role
EXEC sp_addrolemember N'db_owner', N'<user_name, sysname, user_name>'
GO
