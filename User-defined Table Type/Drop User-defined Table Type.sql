-- ================================
-- Drop User-defined Table Type
-- ================================
USE <database_name,sysname,AdventureWorks>
GO

-- Drop the table type - this will fail if it is being used
DROP TYPE <schema_name,sysname,dbo>.<type_name,sysname,TVP>
GO
