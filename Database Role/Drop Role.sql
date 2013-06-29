-- =====================
-- Drop Role template
-- =====================

USE <database_name, sysname, AdventureWorks>;
GO

-- Create the database role
CREATE ROLE <role_name, sysname, Production_Owner> AUTHORIZATION [dbo];
GO

-- Drop the role
DROP ROLE <role_name, sysname, Production_Owner>;
GO
