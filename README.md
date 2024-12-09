# SQL NULL Handling in SUM() Aggregation

This repository demonstrates a common SQL error related to handling NULL values in aggregate functions like SUM(). The `bug.sql` file contains a SQL query that unexpectedly returns NULL when summing a column with NULL values. The `bugSolution.sql` file provides a corrected query that addresses this issue.

The problem arises because SQL's SUM() function treats NULL as a special value; it doesn't just ignore it, but propagates the NULL result.  The solution involves using the `COALESCE()` or `ISNULL()` function (depending on the specific SQL dialect) to replace NULL values with 0 before summation, ensuring a meaningful numerical result.

This example highlights the importance of careful NULL value handling when working with SQL aggregations and joins.