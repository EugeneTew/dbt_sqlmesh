# dbt_adv: Advanced dbt Project

This project demonstrates more advanced dbt features, building upon the concepts in the `dbt_ver` example. Its main goal is to showcase data loading via seeds and the use of different model materializations to build a multi-layered data model with clear dependencies.

## Overview

This dbt project focuses on the following key concepts:

-   **Loading Raw Data:** Uses the `dbt seed` command to load initial data from CSV files directly into the data warehouse.
-   **Model Materializations:** Demonstrates the practical use of the three main materialization types:
    1.  **View:** For simple transformations with no performance cost on storage.
    2.  **Table:** For models that are computationally intensive to build and are queried often.
    3.  **Ephemeral:** For intermediate transformation steps that you don't need to store or query directly in the database.
-   **Data Lineage:** The final project can be visualized as a Directed Acyclic Graph (DAG) to understand the dependencies between models.

## ✅ Prerequisites

Before you begin, ensure you have completed the full setup instructions in the main `readme.txt` at the root of this repository. This includes:
-   Running the PostgreSQL Docker container.
-   Activating the shared Python virtual environment (`venv`).

## ⚙️ Setup & Configuration

To connect dbt to your local PostgreSQL database, you need to configure your `profiles.yml` file.

1.  **Create or Update your profile:**
    Place the following configuration in your `profiles.yml` file, typically located at `~/.dbt/profiles.yml`.
    
    > **Note:** Using a separate schema like `dbt_adv` is highly recommended to keep the project's tables isolated and organized.

    ```yaml
    dbt_adv:
      outputs:
        dev:
          type: postgres
          host: localhost
          user: postgres
          pass: password
          port: 5432
          dbname: dbt_sqlmesh
          schema: dbt_adv
          threads: 4
      target: dev
    ```

## 🚀 Running the Project

Ensure your virtual environment is activated (`source venv/bin/activate`) and you are in the main project directory. All commands should be run from the root of the repository.

1.  **Check the database connection:**
    This command uses your `profiles.yml` to test the connection to PostgreSQL.
    ```bash
    dbt debug
    ```
    You should see a "Connection OK" message.

2.  **Load the initial data:**
    This command finds the CSV files in the `seeds` directory and loads them as tables into your target schema (`dbt_adv`).
    ```bash
    dbt seed
    ```

3.  **Run the dbt models:**
    This command executes the compiled SQL for all models against your database, creating the views and tables as defined.
    ```bash
    dbt run
    ```

4.  **(Optional but Recommended) Test your data:**
    Run any data tests defined in the project to ensure data quality.
    ```bash
    dbt test
    ```

5.  **Visualize your project:**
    These commands generate a local documentation website that includes your project's DAG, model descriptions, and SQL code.
    ```bash
    dbt docs generate
    dbt docs serve
    ```
    This will launch a website (usually at `http://127.0.0.1:8080`) where you can explore your data models and their lineage visually.