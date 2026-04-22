CREATE TABLE [dbo].[stg_medications] (

	[START] date NULL, 
	[STOP] date NULL, 
	[PATIENT] varchar(8000) NULL, 
	[ENCOUNTER] varchar(8000) NULL, 
	[CODE] int NULL, 
	[DESCRIPTION] varchar(8000) NULL, 
	[REASONCODE] bigint NULL, 
	[REASONDESCRIPTION] varchar(8000) NULL
);