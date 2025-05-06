# MSBI + Power BI

A project demonstrating the use of Microsoft Business Intelligence (MSBI) components, including:

- **SSIS** (SQL Server Integration Services)
- **SSAS** (SQL Server Analysis Services)
- **SSRS** (SQL Server Reporting Services)
- **Power BI**

## 📁 Project Structure

The repository contains a simulated BI solution for a fictional company called **Frania**. It includes the full data processing pipeline: from raw data to OLAP cubes and final reports.

### 1. `data/` – Source Data

This folder contains the source data used to build the Frania data warehouse. The data is provided in relational database format and CSV files.

---

### 2. `ETL Frania/` – SSIS Project (ETL Process)

An **SSIS** project that implements the ETL process:

- **Data sources**: 
  - A relational database
  - A CSV file

- **Process overview**:
  - Extraction of raw data from the two sources
  - Transformation and merging of the data
  - Loading of the data into a star-schema data warehouse

- **Target schema**:
  - Dimension tables:  
    - `dim_klienci`  
    - `dim_regiony`  
    - `dim_czas`
  - Fact tables:
    - `fakt_sprzedaz_historyczna`  
    - `fakt_sprzedaz_planowa`

---

### 3. `OLAP Frania/` – SSAS Project (OLAP Cube)

An **SSAS** project that builds an OLAP cube based on the data warehouse created in the ETL phase.

- Includes:
  - Definition of dimensions and hierarchies
  - Measure groups and calculated measures
  - KPIs (optional)
  - Sample queries in **MDX**
  - A `.md` file documenting the steps taken to build and configure the cube

---

### 4. `Report Frania Sprzedaz/` – SSRS Project (Reporting)

An **SSRS** project that provides a sample sales report using data from the OLAP cube.

- Showcases basic reporting techniques:
  - Tables and charts
  - Parameters
  - Formatting and layout customization

---

## 🚀 Goals

This project aims to:

- Demonstrate end-to-end data processing in the Microsoft BI stack
- Provide a learning resource for those interested in SSIS, SSAS, and SSRS
- Show how to integrate relational data sources, OLAP models, and reporting tools

---

## ✅ Requirements

- Visual Studio 2019 or 2022
- SQL Server Data Tools (SSDT)
- MSBI extensions:
  - [SSIS Projects](https://marketplace.visualstudio.com/items?itemName=SSIS.SqlServerIntegrationServicesProjects)
  - [SSAS Projects](https://marketplace.visualstudio.com/items?itemName=Microsoft.AnalysisServices)
  - [SSRS Projects](https://marketplace.visualstudio.com/items?itemName=ms-mssql.mssql-reporting-services)
- SQL Server Developer Edition (with SSAS, SSIS, SSRS installed)

---

## 📌 Notes

- This project is for educational and demonstration purposes.
- All data used is fictional.
