The following SQL query attempts to update a table based on a subquery that returns multiple rows.  This will result in an error because SQL doesn't know which row from the subquery to use for each update. 
```sql
UPDATE employees
SET salary = (SELECT salary FROM departments WHERE dept_id = 10);
```