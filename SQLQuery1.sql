USE master
GO

-- Drop the database if it already exists
IF DB_ID('College') IS NOT NULL
	DROP DATABASE College
GO

-- Create a new database named College
CREATE DATABASE College
GO 
