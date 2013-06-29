-- =======================================================================
-- Split federation member template for a SQL Azure database
-- This script will run only in the context of the federation root database.
-- =======================================================================

USE FEDERATION ROOT WITH RESET
GO

ALTER FEDERATION <Federation_Name, sysname, > SPLIT AT 
(<Distribution_Name, sysname, > = <Boundary_Value, keytype, >)
GO
