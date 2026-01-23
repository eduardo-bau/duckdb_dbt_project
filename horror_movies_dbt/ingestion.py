import os
import duckdb


base_dir = os.path.dirname(os.path.abspath(__file__))

csv_path = os.path.join(base_dir, "horror_movies.csv")
database = os.path.join(base_dir, "movies_db.duckdb")

conn_db = duckdb.connect(database)

conn_db.execute(f"""
    CREATE OR REPLACE TABLE horror_movies_raw
    AS
    FROM read_csv('{csv_path}')
""")
