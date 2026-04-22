# 🏥 Pharma Data Pipeline using Medallion Architecture (dbt + Microsoft Fabric)

## Overview

This project demonstrates an end-to-end **Medallion Architecture (Bronze → Silver → Gold)** implemented using **Microsoft Fabric** and **dbt (Data Build Tool)**. It processes healthcare datasets (patients, encounters, medications, procedures) to generate clean, aggregated, and analytics-ready data.

The pipeline was validated by comparing results with a **PySpark-based implementation**, ensuring correctness and consistency.

---

##  Architecture

```
Raw CSV Files
      ↓
Bronze Lakehouse (Raw Data)
      ↓
dbt Staging (Data Cleaning)
      ↓
dbt Intermediate (Aggregation)
      ↓
Silver Layer (Integrated Dataset)
      ↓
Gold Layer (Business KPIs)
      ↓
Analytics / Reporting
```

---

## ⚙️ Tech Stack

* Microsoft Fabric (Lakehouse + Warehouse)
* dbt (Data Build Tool)
* SQL
* PySpark (for validation)
* GitHub (version control)

---

## Project Structure

```
models/
 ├── staging/
 │    ├── stg_patients.sql
 │    ├── stg_encounters.sql
 │    ├── stg_medications.sql
 │    └── stg_procedures.sql
 │
 ├── intermediate/
 │    ├── int_encounters.sql
 │    ├── int_medications.sql
 │    └── int_procedures.sql
 │
 └── marts/
      ├── silver_pharma.sql
      ├── gold_encounters.sql
      ├── gold_medications.sql
      └── gold_procedures.sql
```

---

## 🚀 Implementation Steps

### 1. Bronze Layer (Ingestion)

* Uploaded raw CSV files into Fabric Lakehouse
* Converted files into structured tables:

  * encounters, patients, medications, procedures

---

### 2. dbt Setup

* Created dbt project
* Configured:

  * `dbt_project.yml`
  * Source YAML (`src_bronze.yml`)

---

### 3. Staging Layer (Cleaning)

* Removed null values
* Standardized columns
* Created derived fields:

  * `name` = first + last name
  * `is_alive` = derived from deathdate

---

### 4. Intermediate Layer (Aggregation)

* Applied key principle:

  * **Aggregate first, then join**
* Calculated:

  * total encounters, unique reasons
  * medication counts and active flags
  * procedure counts

---

### 5. Silver Layer (Integration)

* Joined patient data with aggregated metrics
* Created unified dataset:

  * `silver_pharma`

---

### 6. Gold Layer (Business Output)

* Created domain-specific tables:

  * `gold_encounters`
  * `gold_medications`
  * `gold_procedures`

---

### 7. dbt Execution

* Configured dbt job in Fabric:

  * Source: GitHub
  * Destination: Warehouse
  * Schema: dbo

Run:

```
dbt build
```

---

### 8. Validation

* Compared dbt output with PySpark:

  * Row count validation
  * Aggregation checks
  * Sample data comparison

---

## Key Learnings

* Aggregation before join prevents data duplication
* dbt executes transformations in the connected compute layer (Warehouse)
* Staging layer is essential for clean, consistent data
* Cross-validation with PySpark ensures pipeline reliability

---

## 📊 Output

* **Silver Layer:** Clean, integrated patient dataset
* **Gold Layer:** Business-ready KPI datasets



## 👩‍💻 Author

**Kalpana Amrutkar Kothawade**

---

