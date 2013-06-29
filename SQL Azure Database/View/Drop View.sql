--=========================================
-- Drop View template for SQL Azure Database
--=========================================
IF EXISTS (
  SELECT *
	FROM sys.views
	JOIN sys.schemas
	  ON views.schema_id = schemas.schema_id
   WHERE schemas.name = N'<schema_name, sysname, your_schema_name>'
	 AND views.name = N'<view_name, sysname, your_view_name>'
)
  DROP VIEW <schema_name, sysname, your_schema_name>.<view_name, sysname, view_table_name>
GO
