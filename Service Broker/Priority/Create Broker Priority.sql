-- =============================================
-- Create the Broker Priority Template
-- =============================================

-- =============================================
-- Author:		<Author,,>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE BROKER PRIORITY <priority-name, sysname, conpriority>
FOR CONVERSATION
SET ( CONTRACT_NAME = <contract-name , sysname, ANY> ,
      LOCAL_SERVICE_NAME = <local-service-name , sysname, ANY> ,
      REMOTE_SERVICE_NAME = N'<remote-service-name , nvarchar(256), ANY>' ,
      PRIORITY_LEVEL = <priority-value, int, DEFAULT>
)
