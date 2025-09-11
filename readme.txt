# dbt & sqlmesh projects

A hands-on project for demonstrating and comparing data transformation workflows using dbt and SQLMesh. 
All examples are designed to run locally using PostgreSQL in a Docker container.

## Overview

This repository serves as a practical guide to different data engineering practices. It contains several sub-projects that showcase:
- A standalone dbt project.
- A standalone SQLMesh project.
- A dbt project that has been converted to and is managed by SQLMesh.

The goal is to provide a clear, step-by-step guide to setting up the environment and exploring the capabilities of each tool.

## 🚀 Getting Started

Follow these instructions to set up your local development environment, including a PostgreSQL database and the necessary Python tools.

### Prerequisites

You must have the following software installed on your machine:
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- Python 3.8+

---

### **Step 1: Set Up PostgreSQL with Docker**

This will create a persistent PostgreSQL container named `pg_comparison` that you can connect to.

1.  **Start the PostgreSQL container:**
    Open your terminal and run the following command. This will download the `postgres:15` image if you don't have it and start the container.
    ```bash
    docker run --name pg_comparison -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres:15
    ```

2.  **Verify the container is running:**
    ```bash
    docker ps
    ```
    You should see `pg_comparison` in the list of running containers.

3.  **Connect to the PostgreSQL instance:**
    This command opens an interactive `psql` shell inside your running container.
    ```bash
    docker exec -it pg_comparison psql -U postgres
    ```

4.  **Create the project database:**
    Once inside the `psql` shell, run the following SQL command:
    ```sql
    CREATE DATABASE dbt_sqlmesh;
    ```

5.  **Confirm the database was created:**
    Use the `\l` command to list all databases. Ensure `dbt_sqlmesh` is on the list.
    ```sql
    \l
    ```
    You can now type `\q` to exit the `psql` shell.

---

### **Step 2: Set Up the Python Environment**

> **Note:** Instead of creating separate environments for dbt and SQLMesh, we will create a single, unified environment. This is a best practice, as SQLMesh is designed to act as a runner and manager for dbt projects.

1.  **Create a virtual environment:**
    From your project's root directory, run the following command. This creates a `venv` folder within your project.
    ```bash
    python3 -m venv venv
    ```

2.  **Activate the virtual environment:**
    ```bash
    source venv/bin/activate
    ```
    Your terminal prompt should now be prefixed with `(venv)`.

3.  **Install all required packages:**
    Each sub-project has its own list of dependencies. Run the following commands from the root directory to install all necessary packages into your single virtual environment.
    ```bash
    [ dbt related projects ]
        pip install -r dbt_adv/requirements.txt

    [ sqlmesh related projects ]
        pip install -r sqlmesh_adv_converted/requirements.txt
    ```
    *This ensures that all packages needed for any of the examples are available in your environment.*

4.  **Deactivating the virtual environment:**
    When you are finished working, you can deactivate the environment with:
    ```bash
    deactivate
    ```

---

## 📂 Exploring the Project Examples

After successfully setting up your database and Python environment, you are ready to explore the example projects. Each folder contains a standalone project with its own `README.md` file with further instructions.

Navigate into each directory to see how it works:

- **`dbt_adv`**: A standard dbt project.
- **`sqlmesh_ver`**: A project built from scratch using only SQLMesh.
- **`sqlmesh_adv_converted`**: The `dbt_adv` project after being converted and managed by SQLMesh.

For each project, follow the instructions in its local `README.md` file to run and test the transformations.

Ignore `dbt_ver` and `sqlmesh_adv` as those are testing projects.