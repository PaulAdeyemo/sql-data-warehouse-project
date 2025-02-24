/*
================= CREATE DATABASE AND SCHEMA====================
Script purpose:
				This script creates a new database called 'Datawarehouse' after checking if it already exists.
				If the database exists, it is dropped and re-created. Additionally, the script sets up three schemas
				within the database: 'bronze','silver','gold'

WARNING:
    Runing this script will drop the entire 'Datawarehouse' database if exists
	All data in the database will be permanently deleted. Proceed with caution and ensure 
	you have proper backups before running this script.
*/

-- Drop and recreate database 'Datawarehouse' if exist
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    ALTER DATABASE Datawarehouse SET single_user WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO
-- CREATE THE DATABASE
CREATE DATABASE Datawarehouse;

-- ACTIVATE THE DATABASE
USE Datawarehouse;
GO
-- CREATE THE SCHEMA
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
