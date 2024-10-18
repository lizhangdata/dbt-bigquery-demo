{{config(materialized='view')}}

with spine as (
    select * from {{ref('stg_datespine')}}
)
select
        EXTRACT(YEAR FROM date_month) as year,
        EXTRACT(MONTH FROM date_month) as month,
        cast({{ dbt.date_trunc("year", "date_month") }} as date) as date_year,
        cast({{ dbt.date_trunc("month", "date_month") }} as date) as period_first_day,
        {{ dbt.last_day("date_month", "month") }} as period_last_day,
        row_number() over (order by cast({{ dbt.date_trunc("month", "date_month") }} as date)) as period_index
    from spine