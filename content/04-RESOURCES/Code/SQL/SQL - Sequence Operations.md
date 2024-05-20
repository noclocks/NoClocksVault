```sql
create [ temporary | temp ] sequence [ if not exists ] sequence_name [ increment [ by ] increment ]
    [ minvalue min_value | no minvalue ] [ maxvalue max_value | no maxvalue ]
    [ start [ with ] start_value ] [ cache cache ] [ [ no ] cycle ]
    [ owned by { table_name.column_name | none } ]

-- Example 1. Create a sequence starting from 1 and incremented by 1 with no maximum and minimum value
create sequence test_seq increment by 1 start with 1 no maxvalue no minvalue; -- test_seq is the sequence name

-- Example 2. Create a sequence starting from 100 and incremented by 10
create sequence test_seq increment by 10 start with 100; -- test_seq is the sequence name
```