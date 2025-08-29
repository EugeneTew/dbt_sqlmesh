This is a documentation of DBT and SQLMesh practices. 
The project is created locally using PostgreSQL with Docker.
Step-to-step setup for PostgreSQL and Virtual Environment are documented under this readme.txt.

Pre-requirements:
- Installed Docker 
- Installed Python3

---------------------------------------------------------------------------------------------------
PostgreSQL Setup
---------------------------------------------------------------------------------------------------
[1] To start a PostgreSQL container in docker, run the command:
    docker run --name pg_comparison -e POSTGRES_PASSWORD=password -p 5432:5432 -d postgres:15

[2] To double confirm if the container is running, you can check docker list by command: 
    docker ps

[3] Run the following command to connect to Postgres:
    docker exec -it pg_comparison psql -U postgres

[4] Once in the Postgres Interface, create the database with command:
    CREATE DATABASE dbt_sqlmesh

[5] To show the list of databases, input the command:
    \l or \list

Ensure that Database dbt_sqlmesh is present on the list.


---------------------------------------------------------------------------------------------------
DBT venv Setup
---------------------------------------------------------------------------------------------------
[1] To create a virtual environment, use the following command:
    python3 -m venv {your folder path}
    (i.e. python3 -m venv ~/venvs/dbt_env)

[2] Activate the virtual environment by:
    source {your folder path}/bin/activate
    (i.e. source ~/venvs/dbt_env/bin/activate)

[3] Install the required DBT packages needed by project:
    pip install dbt-postgres

[4] To deactivate the virtual environment, use the following command:
    deactivate


---------------------------------------------------------------------------------------------------
SQLMesh venv Setup
---------------------------------------------------------------------------------------------------
[1] To create a virtual environment, use the following command:
    python3 -m venv {your folder path}
    (i.e. python3 -m venv ~/venvs/sqlmesh_env)

[2] Activate the virtual environment by:
    source {your folder path}/bin/activate
    (i.e. source ~/venvs/sqlmesh_env/bin/activate)

[3] Install the required DBT packages needed by project:
    pip install sqlmesh psycopg2-binary

[4] To deactivate the virtual environment, use the following command:
    deactivate


---------------------------------------------------------------------------------------------------
After finish the setup of Postgres and Virtual Environment, follow the steps in the README.md under each of the following folders to recreate the projects locally:
[1] dbt_adv
[2] dbt_ver
[3] sqlmesh_ver