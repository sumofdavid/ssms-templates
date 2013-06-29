-- =====================================================
-- Create Function fn_convertnumericlsntobinary Template
-- =====================================================
USE <Database_Name,sysname,Database_Name>
GO

CREATE FUNCTION dbo.fn_convertnumericlsntobinary(
	@numericlsn numeric(25,0)
) returns binary(10)
AS
BEGIN
	DECLARE @high4bytelsncomponent bigint,
		@mid4bytelsncomponent bigint,
		@low2bytelsncomponent int
	SELECT @high4bytelsncomponent = CONVERT(bigint, floor(@numericlsn / 1000000000000000))
	SELECT @numericlsn = @numericlsn - CONVERT(numeric(25,0), @high4bytelsncomponent) * 1000000000000000
	SELECT @mid4bytelsncomponent = CONVERT(bigint,floor(@numericlsn / 100000))
	SELECT @numericlsn = @numericlsn - CONVERT(numeric(25,0), @mid4bytelsncomponent) * 100000
	SELECT @low2bytelsncomponent = CONVERT(int, @numericlsn)
	RETURN CONVERT(binary(4), @high4bytelsncomponent) +
		CONVERT(binary(4), @mid4bytelsncomponent) +
		CONVERT(binary(2), @low2bytelsncomponent)
END
GO
