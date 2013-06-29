-- =============================================
-- Alter Database Audit Specification Template
-- =============================================

-- =============================================
-- Author:		<Author,,>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER DATABASE AUDIT SPECIFICATION <audit_specification_name,nvarchar,audit_specification_name>
FOR SERVER AUDIT <audit_name,nvarchar,audit_name>
DROP (SELECT on <object,nvarchar,table1> BY <principal, nvarchar, user1>)
ADD (INSERT on <object,nvarchar,table1> BY <principal, nvarchar, user1>)
WITH ( STATE = <state,bool,OFF > )


