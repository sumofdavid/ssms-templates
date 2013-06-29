--===============================================
-- Drop Schema template for SQL Azure Database
--===============================================
IF EXISTS(
  SELECT *
    FROM sys.schemas
   WHERE name = N'<sample_schema, sysname, sample_schema>'
)
DROP SCHEMA <sample_schema, sysname, sample_schema>
GO
