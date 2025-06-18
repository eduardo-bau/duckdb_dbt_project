import duckdb

csv_path = "/Users/Bluetab/Documents/duckdb_dbt_project/horror_movies_dbt/horror_movies.csv"
database = "/Users/Bluetab/Documents/duckdb_dbt_project/horror_movies_dbt/movies_db.duckdb"
conn_db = duckdb.connect(database)

# conn_db.execute("CREATE SCHEMA IF NOT EXISTS bronze_schema")

conn_db.execute(f"""
    CREATE TABLE IF NOT EXISTS horror_movies_raw
    AS
    FROM read_csv('{csv_path}')
""")