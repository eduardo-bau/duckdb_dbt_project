import os
import duckdb


user_name = os.getlogin()

csv_path = f"/Users/{user_name}/Documents/duckdb_dbt_project/horror_movies_dbt/horror_movies.csv"
database = f"/Users/{user_name}/Documents/duckdb_dbt_project/horror_movies_dbt/movies_db.duckdb"

conn_db = duckdb.connect(database)

conn_db.execute(f"""
    CREATE TABLE IF NOT EXISTS horror_movies_raw
    AS
    FROM read_csv('{csv_path}')
""")