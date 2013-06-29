-- =====================================
-- Create Partition Function template
-- =====================================
USE <database_name, sysname, AdventureWorks>
GO

CREATE PARTITION FUNCTION <partition_function_name, sysname, myRangePF> ( <data_type_name, sysname, int> )
AS RANGE LEFT FOR VALUES (<data_value1,,1>, <data_value2,,100>, <data_value3,,1000>);

-- Partition function on a partitioning column col1 would be partitioned as follows:
-- Partition 1: col1 less than or equal to <data_value1,,1>
-- Partition 2: col1 greater than <data_value1,,1> AND col1 less than or equal to <data_value2,,100>
-- Partition 3: col1 greater than <data_value2,,100> AND col1 less than or equal to <data_value3,,1000>
-- Partition 4: col1 greater than <data_value3,,1000>
