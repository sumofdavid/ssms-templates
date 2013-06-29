--=============================================================
-- Drop Assembly Template
--=============================================================
IF EXISTS(
	SELECT *
	  FROM sys.assemblies
	 WHERE name = N'<assembly_name, SYSNAME, MyClass>'
)
DROP ASSEMBLY <assembly_name, SYSNAME, MyClass>


  