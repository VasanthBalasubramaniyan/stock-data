# Stock Data Pipeline (Python + PostgreSQL)

## Files
- data/nse_daily.parquet          # your source parquet (rename accordingly)
- 01_load_preprocess_store.ipynb  # notebook to load + upsert into Postgres
- 02_query_retrieve_analyze.ipynb # notebook to query + analyze
- schema.sql                      # SQL schema creation script
- append_new_year.py              # script to append new yearly parquet
- requirements.txt

## Setup
1. Install dependencies:
   pip install -r requirements.txt

2. Start PostgreSQL and create DB & user:
   - Example using psql:
     createuser -P youruser        # set password
     createdb -O youruser nse_db

   OR run:
     psql -U postgres
     CREATE DATABASE nse_db;
     CREATE USER youruser WITH ENCRYPTED PASSWORD 'yourpassword';
     GRANT ALL PRIVILEGES ON DATABASE nse_db TO youruser;

3. (Optional) Apply schema:
   psql -U youruser -d nse_db -f schema.sql

4. Place your parquet file at `data/nse_daily.parquet` or update notebook config.

## Run
1. Open `01_load_preprocess_store.ipynb` and run cells in order to load and store data into Postgres.
2. Open `02_query_retrieve_analyze.ipynb` to run queries and load results into Pandas.
3. Test pipeline updates:
   - Place a new parquet for a new year at `data/nse_new_year.parquet`.
   - Run `python append_new_year.py`.
   - Re-run queries in Notebook 2 to verify updates.

## Notes
- Adjust DB credentials in notebooks or use environment variables for security.
- Indexing: `symbol`, `date`, and unique `(symbol,date)` index are created for performance.
- If your dataset uses a different symbol for Nifty, update the `possible_nifty_symbols` list in Notebook 2.
