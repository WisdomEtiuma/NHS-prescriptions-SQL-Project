# NHS Prescriptions Database (SQL Server Project)

This project presents the design and implementation of a relational database based on real-world NHS prescription data from Bolton, England. The aim was to model, store, and analyse prescription activity efficiently using SQL Server.

## 📌 Project Overview

The dataset consists of multiple related tables capturing prescription activity, including medical practices, drugs, and issued prescriptions. The database was designed to support querying, reporting, and analysis of prescribing trends.

This project demonstrates practical SQL skills including database design, data cleaning, query development, and performance considerations.

## 🗂️ Dataset Description

The database is built from four CSV files:

- **Medical_Practice** – Contains details of GP practices (e.g. name, address, practice code)
- **Drugs** – Contains drug information including BNF codes and descriptions
- **Prescriptions** – Records each prescription issued, including quantity and items
- **Prescriptions_Summary**

The tables are linked using keys such as:
- `PRACTICE_CODE`
- `BNF_CODE`

## 🧱 Database Design

The database follows a relational structure with:

- Primary keys to uniquely identify records
- Foreign keys to maintain relationships between tables
- Appropriate data types to handle large numeric values (e.g. `INT` for quantity and items)

The design ensures:
- Data integrity
- Reduced redundancy
- Efficient querying

📌 See `database_diagram.pdf` for the full schema.

## ⚙️ Implementation Steps

The project was implemented in the following stages:

First, the raw CSV files were imported into SQL Server. During this process, data type issues were identified and resolved, particularly with numeric fields such as quantity and item counts.

Next, the database schema was created, including tables, constraints, and relationships. Data cleaning steps were applied to handle inconsistencies and ensure compatibility with SQL Server data types.

Finally, analytical queries were developed to extract meaningful insights from the data.

## 📊 Example Queries and Analysis

The project includes a set of SQL queries to analyse prescribing trends. Examples include:

- Total prescriptions issued per medical practice
- Most frequently prescribed drugs
- Total quantity of drugs prescribed
- Aggregated trends by drug category

These queries demonstrate the use of joins, grouping, aggregation, and filtering.

## ▶️ How to Run the Project

1. Open SQL Server Management Studio
2. Create a new database (e.g. `NHS_Prescriptions`)
3. Run the scripts.
Ensure that all tables are created before running insert statements.

## ⚠️ Challenges and Solutions

During the project, several common SQL issues were encountered:

- Data type conversion errors (e.g. values too large for `SMALLINT` or `TINYINT`)
- NULL value conflicts in non-nullable columns
- String truncation due to insufficient column length

These were resolved by:
- Updating numeric fields to `INT`
- Allowing NULLs where appropriate
- Increasing column sizes (e.g. `NVARCHAR(255)`)

## 🔐 Data Integrity and Design Considerations

- Constraints were used to enforce valid data
- Relationships ensure consistency across tables
- Queries were designed to be efficient and readable

## 📈 Future Improvements

- Add indexing to improve query performance
- Build a Power BI dashboard for visualisation
- Automate data ingestion using ETL pipelines
- Expand dataset to include multiple regions

## 👤 Author

Wisdom Etiuma  
MSc Data Science – University of Salford
