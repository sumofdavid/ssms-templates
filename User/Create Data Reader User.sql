-- ===================================
-- Create Data Reader User template
-- ===================================
USE <database_name, sysname, AdventureWorks>
GO

-- Create a login using a Windows user
CREATE LOGIN [<domain_name,,domain>\<user_name,,windows_user>] FROM WINDOWS WITH DEFAULT_DATABASE = <database_name, sysname, AdventureWorks>

-- Add the user to the database using their login name and the user name
CREATE USER [<domain_name,,domain>\<user_name,,windows_user>]
	FOR LOGIN [<domain_name,,domain>\<user_name,,windows_user>]
	WITH DEFAULT_SCHEMA = <default_schema, sysname, Production>
GO

-- Add user to db_datareader role
ALTER ROLE [db_datareader]
ADD MEMBER [<domain_name,,domain>\<user_name,,windows_user>]
GO

