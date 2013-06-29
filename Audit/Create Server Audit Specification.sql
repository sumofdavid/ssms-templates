-- =============================================
-- Create Server Audit Specification Template
-- =============================================

-- =============================================
-- Author:		<Author,,>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE SERVER AUDIT SPECIFICATION <audit_specification_name,nvarchar,audit_specification_name>
FOR SERVER AUDIT <audit_name,nvarchar,audit_name>
ADD (<audit_action_group_name,sysname,FAILED_LOGIN_GROUP> )
WITH ( STATE = <state,bool,OFF > )


