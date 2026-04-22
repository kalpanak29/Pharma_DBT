CREATE TABLE [dbo].[silver_pharma] (

	[patient_id] varchar(8000) NULL, 
	[name] varchar(8000) NOT NULL, 
	[gender] varchar(8000) NULL, 
	[is_alive] int NOT NULL, 
	[total_encounters] int NULL, 
	[unique_enc_reasons] int NULL, 
	[total_medications] int NULL, 
	[unique_medications] int NULL, 
	[active_medications] int NULL, 
	[total_procedures] int NULL, 
	[unique_procedures] int NULL
);