{% macro full_name(first_name, last_name) %}
    {{first_name}}||' '||{{'last_name'}}
{% endmacro %}