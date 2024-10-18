
{{ dbt_utils.date_spine(
        datepart="month",
        start_date="cast('2023-01-01' as Date)",
        end_date="cast('2025-01-01' as Date)"
        )
    }}
