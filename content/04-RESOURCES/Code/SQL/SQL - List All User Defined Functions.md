```sql
select n.nspname as schema_name,
  p.proname as specific_name,
  case p.prokind
    when 'f' then 'FUNCTION'
    when 'p' then 'PROCEDURE'
    when 'a' then 'AGGREGATE'
    when 'w' then 'WINDOW'
    end as kind,
  l.lanname as language,
  case when l.lanname = 'internal' then p.prosrc
    else pg_get_functiondef(p.oid)
    end as definition,
  pg_get_function_arguments(p.oid) as arguments,
  t.typname as return_type
from pg_proc p
left join pg_namespace n on p.pronamespace = n.oid
left join pg_language l on p.prolang = l.oid
left join pg_type t on t.oid = p.prorettype
where n.nspname in ('public')
order by schema_name,
  specific_name;
```