-- SQL Server Services information (SQL Server 2008 R2 SP1 or greater)
SELECT [Poll Time]=getdate(), [Server Name]=@@ServerName,
servicename, startup_type_desc, status_desc, 
last_startup_time, service_account, is_clustered, cluster_nodename
FROM sys.dm_server_services OPTION (RECOMPILE);

-- Tells you the account being used for the SQL Server Service and the SQL Agent Service
-- Shows when they were last started, and their current status
-- Shows whether you are running on a failover cluster
