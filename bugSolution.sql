The error can be fixed by using a JOIN clause or a correlated subquery.  Here's how:

**Method 1: Using a JOIN**
```sql
UPDATE employees
INNER JOIN departments ON employees.dept_id = departments.dept_id
SET employees.salary = departments.salary
WHERE departments.dept_id = 10;
```

**Method 2: Using a Correlated Subquery**
```sql
UPDATE employees
SET salary = (SELECT d.salary FROM departments d WHERE d.dept_id = employees.dept_id AND d.dept_id = 10)
WHERE EXISTS (SELECT 1 FROM departments WHERE dept_id = employees.dept_id AND dept_id = 10);
```
Both methods ensure that the UPDATE statement correctly updates each employee's salary based on the corresponding department's salary.