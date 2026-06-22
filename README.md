# SQL Enterprise Data Warehouse (EDW) Project

A robust, end-to-end modern data warehouse implementation leveraging the **Medallion Architecture** based on the **Data with Baraa** data engineering framework. This project demonstrates raw data ingestion, comprehensive data cleansing pipelines, enterprise integration, and dimensional star-schema modeling using Microsoft SQL Server and T-SQL.

---

## 🚀 Project Architecture Overview
The project strictly decouples data ingestion from business presentations following the **Separation of Concerns (SoC)** principle across a multi-layered data warehouse framework:

1. **Sources Layer:** Ingests flat relational transactional files from decentralized operational sources (**CRM** and **ERP** systems).
2. **Bronze Layer (`bronze` schema):** Acts as the raw landing zone. Data is loaded 1:1 via bulk inserts exactly as it exists in the sources to preserve data lineage and enable tracebility or debugging.
3. **Silver Layer (`silver` schema):** The data scrubbing zone. Handles deep data quality cleansing, standardizes abbreviations, removes unwanted spaces, dynamically structures system histories, and injects data engineering auditing metadata.
4. **Gold Layer (`gold` schema):** The analytical presentation zone. Consolidates multiple systems using a virtualized semantic layer (Views) designed strictly into a **Star Schema** optimization structure for downstream BI and reporting.

---

## 🛠️ Tech Stack & Database Architecture
* **Database Engine:** Microsoft SQL Server (MSSQL)
* **IDE/Client:** SQL Server Management Studio (SSMS) / Azure Data Studio
* **ETL/ELT Architecture Framework:** Modular T-SQL Orchestration (Stored Procedures, System Views, Windowing Functions)
* **Analytical Modeling Style:** Kimball Dimensional Modeling (**Star Schema**)
* **Visualization Ready:** Power BI / Tableau direct connection

---

## 📐 Enterprise Data Modeling (Star Schema)
The final `gold` layer abstracts complex storage entities into a user-friendly star layout built out of virtual analytical components:

* **Fact Tables:** Centralized numeric business transaction events.
  * `fact_sales` - Maps underlying sales amounts, transaction metrics, and order items.
* **Dimension Tables:** High-context descriptive master data built with system-generated deterministic **Surrogate Keys**.
  * `dim_customers` - Integrated entity combining CRM profiles and ERP demographics.
  * `dim_products` - Organized product attributes including categories, dynamic subcategories, and operational costs.

---

## ⚡ ETL Pipeline & Advanced T-SQL Scripting
The data pipeline is fully automated and optimized through advanced database optimization practices:

### 1. Ingestion & Quality Control Mechanisms
* **Bulk Operation Pipeline:** High-performance **Bulk Insert** methodologies to manage fast data loads instead of transactional row-by-row tracking loops.
* **Full Load Processing:** Robust Truncate-and-Insert patterns applied cleanly across daily cycles.
* **Metadata Augmentation:** Injecting explicit structural pillars such as `dw_load_date` metadata tracking to audit lifecycle status.

### 2. Advanced Data Transformation Rules Applied
* **Deduplication:** Utilizing **SQL Window Functions** (`ROW_NUMBER()` over partition windows) to isolate chronological structural records.
* **String Standardization:** Broad data engineering cleanup leveraging `TRIM()` and conditional structural transformations (`CASE WHEN`) to map internal codes to reader-friendly fields (e.g., mapping `M`/`F` abbreviations directly to `Male`/`Female`).
* **SCD History Restructuring:** Rebuilding broken interval data blocks dynamically via analytical positioning operations (**`LEAD()`** functions) to remove chronological historical overlaps across structural tracking rows.
* **Null & Zero Handling:** Eliminating operational divide-by-zero database calculation limits safely using mathematical wrappers (`ISNULL()`, `NULLIF()`, `ABS()`).

### 3. Execution Pipeline Logging & Exception Control
The orchestration layer contains enterprise grade execution validation blocks built directly inside core processing routines:
* Full instrumentation tracking framework built utilizing structured **`TRY...CATCH`** exception handlers.
* Precise runtime telemetry metrics automatically calculating total batch runtime durations utilizing tracking interval timestamps (`DATEDIFF()`).

---

## 💻 Environment Deployment Guidelines
1. Clone this enterprise tracking codebase repository to your environment:
   ```bash
   git clone [https://github.com/sumeet582004/sql-data-warehouse-project.git](https://github.com/sumeet582004/sql-data-warehouse-project.git)
