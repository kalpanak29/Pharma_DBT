CREATE TABLE [dbo].[stg_patients] (

	[patient] varchar(8000) NULL, 
	[birthdate] date NULL, 
	[deathdate] date NULL, 
	[name] varchar(8000) NOT NULL, 
	[gender] varchar(8000) NULL, 
	[is_alive] int NOT NULL
);