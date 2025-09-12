# dbt_ver: A Basic dbt Project

This is a simple, foundational dbt project created for demonstration purposes. It is the ideal starting point for verifying your dbt connection and understanding the most basic dbt workflow.

## Overview

This project is intentionally minimal and contains only a single dbt model. As a result, the generated documentation and DAG (Directed Acyclic Graph) will be very simple.

Its primary purpose is to serve as a successful first step before moving on to more complex examples. For a more in-depth demonstration of dbt's features, please see the `dbt_adv` project.

## ✅ Prerequisites

Before you begin, ensure you have completed the full setup instructions in the main `README.md` at the root of this repository. This includes:
-   Running the PostgreSQL Docker container.
-   Activating the shared Python virtual environment (`venv`).

## ⚙️ Setup & Configuration

To connect dbt to your local PostgreSQL database, you need to configure your `profiles.yml` file.

1.  **Create or Update your profile:**
    Place the following configuration in your `profiles.yml` file, typically located at `~/.dbt/profiles.yml`.
    
    > **Note:** We will use a dedicated `dbt_ver` schema to keep this project's artifacts separate.

    ```yaml
    dbt_ver:
      outputs:
        dev:
          type: postgres
          host: localhost
          user: postgres
          pass: password
          port: 5432
          dbname: dbt_sqlmesh
          schema: dbt_ver
          threads: 4
      target: dev
    ```

## 🚀 Running the Project

Ensure your virtual environment is activated (`source venv/bin/activate`) and you are in the main project directory. The following commands should be run from the root of the repository in this specific order.

1.  **Check the database connection:**
    This command uses your `profiles.yml` to test the connection to PostgreSQL.
    ```bash
    dbt debug
    ```
    You should see a "Connection OK" message.

2.  **Load the seed data:**
    This command loads the sample data from the CSV file in the `seeds` directory into your database.
    ```bash
    dbt seed
    ```

3.  **Run the dbt model:**
    This command will execute the single SQL model against your database, creating a view or table in the `dbt_ver` schema.
    ```bash
    dbt --project-dir dbt_ver run
    ```

4.  **Visualize your project:**
    These commands first generate the documentation assets and then launch a local web server to display them.
    ```bash
    dbt --project-dir dbt_ver docs generate
    dbt --project-dir dbt_ver docs serve
    ```
    This will launch a local website where you can see your simple project visualized.

## Next Steps

Once you have successfully run this basic project, you are ready to explore a more advanced implementation.

➡️ **Proceed to the `dbt_adv` project for a more detailed example.**