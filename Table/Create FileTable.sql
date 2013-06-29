-- =========================================
-- Create FileTable template
-- =========================================
USE <database, sysname, AdventureWorks>
GO

IF OBJECT_ID('<schema_name, sysname, dbo>.<table_name, sysname, sample_filetable>', 'U') IS NOT NULL
  DROP TABLE <schema_name, sysname, dbo>.<table_name, sysname, sample_filetable>
GO

CREATE TABLE <schema_name, sysname, dbo>.<table_name, sysname, sample_filetable> AS FILETABLE
  WITH
  (
    FILETABLE_DIRECTORY = '<file_table_directory_name, sysname, sample_filetable>',
    FILETABLE_COLLATE_FILENAME = <file_table_filename_collation, sysname, database_default>
  )
GO
