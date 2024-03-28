```jinja2
{{last_highlighted_date |date('Y-m-d')}} - {{title|replace(""", "")|replace(""","")|replace("'", "")|replace("'", "")|truncate(159)}} by {{author|replace("@","")|truncate(80)}}
```