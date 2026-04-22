# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "ed49c759-bc19-4ee6-af1d-548f4579d913",
# META       "default_lakehouse_name": "gold_lh",
# META       "default_lakehouse_workspace_id": "be7626ba-ac38-4ed0-a0ce-c6dbbd75079b",
# META       "known_lakehouses": [
# META         {
# META           "id": "b527b95c-c8c2-4370-8679-be852daceed3"
# META         },
# META         {
# META           "id": "ed49c759-bc19-4ee6-af1d-548f4579d913"
# META         }
# META       ]
# META     },
# META     "warehouse": {
# META       "default_warehouse": "53281245-d0e4-a251-4570-ea658689a31e",
# META       "known_warehouses": [
# META         {
# META           "id": "53281245-d0e4-a251-4570-ea658689a31e",
# META           "type": "Datawarehouse"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

df_silver = spark.sql("SELECT * FROM dbt_pharma_wh.dbo.silver_pharma")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_silver.write \
    .format("delta") \
    .mode("overwrite") \
    .save("Tables/silver_pharma")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_gold_enc = spark.sql("SELECT * FROM dbt_pharma_wh.dbo.gold_encounters")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_gold_enc.write \
    .format("delta") \
    .mode("overwrite") \
    .save("Tables/gold_encounters")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_gold_med = spark.sql("SELECT * FROM dbt_pharma_wh.dbo.gold_medications")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_gold_med.write \
    .format("delta") \
    .mode("overwrite") \
    .save("Tables/gold_medications")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df_gold_proc = spark.sql("SELECT * FROM dbt_pharma_wh.dbo.gold_procedures")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************


df_gold_proc.write \
    .format("delta") \
    .mode("overwrite") \
    .save("Tables/gold_procedures")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
