{% set tablenames =['customers'] %}

with unioned as (

{% for tablename in tablenames %}
select remoted.table_name,remotecount=currcount as equal
from (
    select '{{tablename}}' as table_name, count(*) as remotecount
    FROM `{{var('remote_project_id','mythical-harbor-412018')}}`.{{var('remote_schema')}}.`{{tablename}}`
) remoted
join
(
    select '{{tablename}}' as table_name, count(*) as currcount
    FROM `{{target.project}}`.`{{target.schema}}_customers`.`{{tablename}}`
    ) curr on remoted.table_name = curr.table_name
union all
{% endfor %}
select NULL,True
)
select *
from unioned
where table_name is not null