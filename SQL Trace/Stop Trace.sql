-- ======================
-- Stop Trace template
-- ======================
IF EXISTS (
	SELECT * FROM sys.fn_trace_getinfo(<traceid,int,2>)
)
BEGIN
	-- Stops the specified trace
	EXEC sp_trace_setstatus <traceid,int,2>, 0

	-- Closes the specified trace and deletes its definition from the server
	EXEC sp_trace_setstatus <traceid,int,2>, 2
END
ELSE
	PRINT 'Traceid (<traceid,int,2>) does not exist'
GO

