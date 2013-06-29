-- =============================================
-- Alter Server Audit Specification Template
-- =============================================

-- =============================================
-- Author:		<Author,,>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER SERVER AUDIT SPECIFICATION <audit_specification_name,nvarchar,audit_specification_name>
FOR SERVER AUDIT <audit_name,nvarchar,audit_name>
DROP(<audit_action_group_name,name,FAILED_LOGIN_GROUP>)
ADD (<audit_action_group_name,name,SUCCESSFUL_LOGIN_GROUP>)
WITH ( STATE = <state,bool,OFF > )


