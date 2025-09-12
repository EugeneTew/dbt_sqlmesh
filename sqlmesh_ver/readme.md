# SQLMesh Demo Project

This project provides a standard demonstration of how SQLMesh works as a standalone tool. It is designed to introduce the core concepts of the SQLMesh workflow, including environments, plans, and the interactive UI.


## Overview

Unlike a traditional workflow, SQLMesh is state-aware. It understands the state of your data warehouse and helps you deploy changes safely and efficiently. This project showcases:

-   **The SQLMesh Plan:** How to preview every change and its impact on downstream models *before* applying it.
-   **Development Environments:** How to build and test your models in an isolated schema without affecting production.
-   **Transactional Safety:** If a plan fails during execution, SQLMesh automatically rolls back any changes, leaving your database in its original state. There is no risk of breaking things.
-   **The SQLMesh UI:** An intuitive web interface for visualizing your project's data lineage (DAG), inspecting model diffs, and running plans.


## ✅ Prerequisites

Before you begin, ensure you have completed the full setup instructions in the main `README.md` at the root of this repository. This includes:
-   Running the PostgreSQL Docker container.
-   Activating the shared Python virtual environment (`venv`).


## ⚙️ Setup & Configuration

For this demo, a pre-built configuration file (`config.py`) is already included. This file tells SQLMesh how to connect directly to your database.

> **Best Practice:** For a real-world project, you should avoid hardcoding secrets like passwords directly in your code. It is better to load them from environment variables or a secrets manager.

## 🚀 The Core SQLMesh Workflow

Ensure your virtual environment is activated (`source venv/bin/activate`) and you are in the main project directory.


### Step 1: Create a Plan

The `sqlmesh plan` command is the heart of the workflow. It compares your model definitions with the state of the warehouse and shows you what needs to be built.

> **Note:** If your project contains seed models (which load data from local CSV files), this command will also include them in the plan. The seed data will be loaded into the database when you apply the plan. 
**If the seed model does not specify column types, SQLMesh will infer them automatically from the contents of the CSV file.**

1.  **Generate a plan for a development environment:**
    By default, `sqlmesh plan` targets the `prod` environment. It is a best practice to create a plan for a separate development environment to avoid overwriting production data.
    ```bash
    sqlmesh --path . plan dev
    ```

2.  **Review and Apply the plan:**
    The output will show you which models are new or have been modified. SQLMesh will then ask if you want to apply the plan by backfilling the models.
    -   Enter `y` and press Enter to proceed.


### Step 2: Plan and Apply in One Step (Optional)

For convenience, you can tell SQLMesh to create and automatically apply the plan without the interactive prompt. This is useful in scripts or when you are confident in your changes.

```bash
sqlmesh --path . plan dev --auto-apply
```


### Step 3: Visualize the Project in the UI
SQLMesh comes with a powerful web interface for visualizing your project. This UI is developed by Tobiko (the creators of SQLMesh) and runs completely locally.

### Launch the UI:

```bash
sqlmesh --path . ui
```

**Explore:**
Open your browser to http://127.0.0.1:8000. 
Here you can see your data models, view the DAG (lineage), inspect differences between environments, and more.