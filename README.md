# Horror Movies dbt Project

## Summary
This is one of my first projects using dbt (data build tool) and DuckDB. In this project, I built SQL models using a horror movie dataset to create a star schema, following the database design model. Besides, I created dbt unit tests to test the data quality of all models.


## Getting Started

### 1. Create a Python Virtual Environment

Open a terminal in the project root and run:

```bash
python -m venv .venv
```

Activate the environment:
- **Windows:**
  ```bash
  .venv\Scripts\activate
  ```

Activate the environment:
- **Linux**
  ```bash
  source .venv/bin/activate
  ```


### 2. Install Required Python Packages

Install dbt and duckdb:

```bash
pip install dbt-core dbt-duckdb
```

### 3. Prepare the Database (Optional)

In order to create the main database, run:

```bash
cd horror_movies_dbt
python ingestion.py
```

### 4. Run the dbt Project

### Using the starter project

```bash
dbt build
```



