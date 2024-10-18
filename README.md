Welcome to your new dbt project!

### prerequisites
- install dbt core:
    - create a new venv: python -m venv dbt-env
    - activate the virtural environment: source dbt-env/bin/activate
    - install the adapter: python -m pip install dbt-core dbt-snowflake dbt-bigquery
    - to upgrade dbt to the latest version: 
        - dbt --version
        - python -m pip install --upgrade dbt-core
- create a project
    - cd /Users/lzhang/Documents/4Development/dbt
    - dbt init dbt-bigquery-demo
    - cd dbt-bigquery-demo
    - connect to BigQuery:
        - Create a file in the ~/.dbt/ directory named profiles.yml
        - move BigQuery serviceAccount keyfile into this directory
        - update the profiles.yml with the BigQuery connection information
    - Run the debug command from your project to confirm that you can successfully connect
        - dbt debug
    - dbt run
- Link a GitHub repository to your dbt project by running the following commands in Terminal
    - git init
    - git branch -M main
    - git add .
    - git commit -m "create a dbt project"
    - git remote add origin https://github.com/lizhangdata/dbt-bigquery-demo.git
    - git push -u orgin main
    - git checkout -b add-models
    

### Using the starter project

Try running the following commands:
- dbt run
- dbt test
- dbt docs generate
- dbt docs serve

### commit updated changes
- add all changes to git:
    - git add -A
- commit your changes:
    - git commit -m "add new model, test, docs"
- push your changes to your repository:
    - git push 

### special notes
- custom schemas: 
    - https://docs.getdbt.com/docs/build/custom-schemas#understanding-custom-schemas
    - macros/generate_schema_sql

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
