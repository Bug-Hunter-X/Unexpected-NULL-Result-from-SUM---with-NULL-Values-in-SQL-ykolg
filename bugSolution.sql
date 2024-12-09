To correctly handle NULL values and get the sum of non-NULL values, use the `COALESCE()` function (or `ISNULL()` in some SQL dialects) to replace NULLs with 0:

```sql
-- Corrected query
SELECT SUM(COALESCE(Price, 0)) AS TotalPrice FROM Products; -- Results in 30.00
```

The `COALESCE(Price, 0)` expression checks if `Price` is NULL. If it is, it substitutes 0; otherwise, it uses the actual `Price` value. This ensures that NULLs do not affect the summation, providing the correct total of non-NULL prices.