CREATE TABLE [dbo].[stg_encounters] (

	[ID] varchar(8000) NULL, 
	[DATE] date NULL, 
	[PATIENT] varchar(8000) NULL, 
	[CODE] int NULL, 
	[DESCRIPTION] varchar(8000) NULL, 
	[REASONCODE] bigint NULL, 
	[REASONDESCRIPTION] varchar(8000) NULL
);