--===========================
-- Drop synonym template
--===========================
IF EXISTS(
  SELECT *
    FROM sys.synonyms
   WHERE name = N'<synonym_name, sysname, sample_synonym>'
)
DROP SYNONYM <synonym_name, sysname, sample_synonym>
GO
