# NSE Data Engineering Project

This project is an end-to-end data engineering mini-pipeline built using **Python** and **PostgreSQL**.  
It focuses on collecting, processing, storing, and visualizing **NSE (National Stock Exchange)** stock data.  
The goal was to build a small but complete data flow — from raw data to insights — without using heavy orchestration tools.

---

## 📁 Project Overview

The project follows a simple yet production-style structure:

1. **Data Extraction**
   - Downloaded or scraped NSE data (symbols and daily stock prices).
   - Source files stored as parquet for reproducibility.

2. **Data Transformation**
   - Used **Pandas** for cleaning and preprocessing: 
     - Converted data into year-wise (date, numeric fields)
     - Ensured consistent schema for database loading

3. **Data Storage**
   - Created a **PostgreSQL** database: `nse_data`
   - Defined two core tables:
     - `symbols` → Contains symbol metadata  
     - `daily_data` → Contains daily stock price information
   - Loaded cleaned data into PostgreSQL using **SQLAlchemy**

4. **Data Analysis**
   - Queried the database directly from Python:
     - Total record counts
     - Number of unique stock symbols
     - Data completeness by date
   - Used SQL queries with `pandas.read_sql()` for analysis.

5. **Visualization**
   - Used **Matplotlib** and **Seaborn** to visualization
     
---

## 🧰 Tech Stack

| Layer | Technology |
|--------|-------------|
| Language | Python 3.x |
| Database | PostgreSQL |
| Libraries | Pandas, Numpy, SQLAlchemy, Matplotlib, Seaborn |
| Environment | Jupyter Notebook |

---

## ⚙️ Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/VasanthBalasubramaniyan/stock-data.git
   cd nse-data-engineering
2. **Install dependencies**
   ```
   pip install -r requirements.txt
   ```
4. **Configure PostgreSQL**
- Create a new database named `nse_data` in your PostgreSQL instance.
- Update your connection string in the Jupyter Notebook to match your username and password:

  ```
  from sqlalchemy import create_engine
  engine = create_engine("postgresql+psycopg2://username:password@localhost:5432/nse_data")
  ```

4. **Run the Notebook**
- Start Jupyter Notebook:
  ```
  jupyter notebook
  ```
- Open the notebook(s) and execute the cells in order to:
  - Create tables
  - Load data
  - Visualize insights

---



