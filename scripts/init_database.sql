/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'JurayLaboDW' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'JurayLaboDW' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'JurayLaboDW')
BEGIN
    ALTER DATABASE JurayLaboDW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE JurayLaboDW;
END;
GO

-- Create the 'JurayLaboDW' database
CREATE DATABASE JurayLaboDW;
GO

USE JurayLaboDW;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
