--=========================================
-- Create scalar-valued function template
--=========================================

USE <database_name, sysname, AdventureWorks>
GO

IF OBJECT_ID (N'<schema_name, sysname, dbo>.<function_name, sysname, centigrade_to_farenheit>') IS NOT NULL
   DROP FUNCTION <schema_name, sysname, dbo>.<function_name, sysname, centigrade_to_farenheit>
GO

CREATE FUNCTION <schema_name, sysname, dbo>.<function_name, sysname, centigrade_to_farenheit> (<parameter1, sysname, @centigrade> <parameter1_datatype,, float>)
RETURNS <return_value_datatype,,float>
WITH EXECUTE AS CALLER
AS
-- place the body of the function here
BEGIN
     <T-SQL_statment, ,RETURN((@centigrade * 1.8) + 32.0)>
END
GO
