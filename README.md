# NSE Data Engineering Project

This project is an end-to-end data engineering mini-pipeline built using **Python** and **PostgreSQL**.  
It focuses on collecting, processing, storing, and visualizing **NSE (National Stock Exchange)** stock data.  
The goal was to build a small but complete data flow — from raw data to insights — without using heavy orchestration tools.

---

## 📁 Project Overview

The project follows a simple yet production-style structure:

1. **Data Extraction**
   - Downloaded or scraped NSE data (symbols and daily stock prices).
   - Source files stored as CSVs for reproducibility.

2. **Data Transformation**
   - Used **Pandas** for cleaning and preprocessing:
     - Renamed columns  
     - Fixed missing values  
     - Converted data types (date, numeric fields)
     - Ensured consistent schema for database loading

3. **Data Storage**
   - Created a **PostgreSQL** database: `nse_data`
   - Defined two core tables:
     - `symbols` → Contains symbol metadata  
     - `daily_data` → Contains daily stock price information
   - Loaded cleaned data into PostgreSQL using **SQLAlchemy** and **psycopg2**

4. **Data Analysis**
   - Queried the database directly from Python:
     - Total record counts
     - Number of unique stock symbols
     - Data completeness by date
   - Used SQL queries with `pandas.read_sql()` for analysis.

5. **Visualization**
   - Used **Matplotlib** and **Seaborn** to visualize:
     - Closing price trends over time
     - Volume distribution
     - Correlation between Open, High, Low, Close prices
   - Example visualization:

     ```python
     sns.lineplot(data=df, x='date', y='close', hue='symbol')
     plt.title('Stock Closing Prices Over Time')
     plt.show()
     ```

---

## 🧰 Tech Stack

| Layer | Technology |
|--------|-------------|
| Language | Python 3.x |
| Database | PostgreSQL |
| Libraries | Pandas, Numpy, SQLAlchemy, Psycopg2, Matplotlib, Seaborn |
| Environment | Jupyter Notebook |

---

## ⚙️ Setup Instructions

1. **Clone the repository**
   ```bash
   git clone <your-repo-url>
   cd nse-data-engineering
