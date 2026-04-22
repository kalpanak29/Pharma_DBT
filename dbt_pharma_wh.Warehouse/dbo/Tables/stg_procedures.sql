CREATE TABLE [dbo].[stg_procedures] (

	[DATE] date NULL, 
	[PATIENT] varchar(8000) NULL, 
	[ENCOUNTER] varchar(8000) NULL, 
	[CODE] bigint NULL, 
	[DESCRIPTION] varchar(8000) NULL, 
	[REASONCODE] bigint NULL, 
	[REASONDESCRIPTION] varchar(8000) NULL
);