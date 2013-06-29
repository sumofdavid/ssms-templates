-- =======================
-- Drop Type template
-- =======================

USE <database_name, sysname, AdventureWorks>;
GO

-- Create the assembly reference that contains the type definition
CREATE ASSEMBLY <assembly_name, sysname, utf8string>
FROM '<assembly_path>, ,\\ComputerName\utf8string\utf8string.dll>' ;
GO

-- Create the new data type
CREATE TYPE <type_name, sysname, Utf8String>
EXTERNAL NAME <assembly_name, sysname, utf8string>.<class_name, ,[Microsoft.Samples.SqlServer.utf8string]>;
GO

-- Drop the new data type
DROP TYPE <type_name, sysname, Utf8String>;
GO
