-- =============================
-- Unbind Rule template
-- =============================
-- This feature is marked for deprecation

USE <database_name, sysname, AdventureWorks>
GO

-- Assumes that designated column has a bound rule
-- Unbind the rule from the column
EXEC sp_unbindrule
	'<table_schema_name,,Sales>.<table_name,,SalesOrderDetail>.<column_name,,OrderQty>'
GO
