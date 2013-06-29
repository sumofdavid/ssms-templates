-- =============================================
-- Change the Broker Priority Template
-- =============================================


ALTER BROKER PRIORITY <priority-name, sysname, conpriority>
FOR CONVERSATION
SET ( CONTRACT_NAME = <contract-name , sysname, ANY> ,
      LOCAL_SERVICE_NAME = <local-service-name , sysname, ANY> ,
      REMOTE_SERVICE_NAME = <remote-service-name , nvarchar(256), ANY> ,
      PRIORITY_LEVEL = <priority-value, int, DEFAULT>
)
