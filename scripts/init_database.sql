/* =============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated.
    Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted.
    Proceed with caution and ensure you have proper backups before running this script.
*/

-- Drop the database if it already exists
DROP DATABASE IF EXISTS DataWarehouse;

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;

-- Switch to the newly created database
USE DataWarehouse;

-- Create Schemas (MySQL me Schemas aur Databases same hote hain, 
-- isliye yahan hum 'CREATE SCHEMA' use kar sakte hain)
create schema datawarehouse_bronze;
create schema datawarehouse_silver;
create schema datawarehouse_gold;
