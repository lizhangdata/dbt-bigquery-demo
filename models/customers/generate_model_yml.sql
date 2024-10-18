{{config(enabled=false)}}

--- run 'dbt compile --select generate_model_yml' to get the yml file
{{ codegen.generate_model_yaml(
    model_names=['customers','stg_customers','stg_orders']
) }}