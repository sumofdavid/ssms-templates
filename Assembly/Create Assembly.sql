--=============================================================
-- Create Assembly Template
--=============================================================
IF EXISTS(
	SELECT *
	  FROM sys.assemblies
	 WHERE name = N'<assembly_name, SYSNAME, MyClass>'
)
DROP ASSEMBLY <assembly_name, SYSNAME, MyClass>;
GO

CREATE ASSEMBLY <assembly_name, SYSNAME, MyClass>
FROM N'<Assembly_DLL_Name, nvarchar(4000), Path_MyAssembly.dll>'
WITH PERMISSION_SET = <Safe_External_Access_Unsafe, , SAFE>;
GO
