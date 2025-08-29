This is the advance version of dbt_ver, which aim to visualize the dependancies of multiple tables.

This project load data from CSV files into database using 'seeds'.

Different type of DBT materialize models are created under this project:
[1] View
[2] Table
[3] Ephemeral 

Use of different schema than dbt_ver is adviced to keep the database clean and easy to query.

---------------------------------------------------------------------------------------------------
Load data into PostgreSQL 
---------------------------------------------------------------------------------------------------
[1] Create profile.yml under .dbt folder (default location: ~/.dbt):
    dbt_adv:
        outputs:
            dev:
            dbname: dbt_sqlmesh
            host: localhost
            pass: password
            port: 5432
            schema: dbt_adv
            threads: 4
            type: postgres
            user: postgres
        target: dev

[2] Navigate to the folder dbt_adv:
    cd {your folder path}/dbt_adv
    (i.e. cd ~/downloads/dbt_sqlmesh/dbt_adv)

[3] Run the following command to check if connection is established:
    dbt debug

[4] Run the following command to execute the compiled SQL model files against the target database:
    dbt run

[5] To visualize the information in the project, run the following command one after another:
    dbt docs generate
    dbt docs serve

A website should be launched with all the database visualized information.