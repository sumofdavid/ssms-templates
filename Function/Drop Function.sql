 --================================================
-- Drop function template
--================================================
USE <database_name, sysname, AdventureWorks>
GO

IF OBJECT_ID (N'<schema_name, sysname, dbo>.<function_name, sysname, EmployeeByID>') IS NOT NULL
   DROP FUNCTION <schema_name, sysname, dbo>.<function_name, sysname, EmployeeByID>
GO
