# SQL Practice Vault — MS SQL Server (T-SQL)

A structured, self-paced collection of SQL practice files covering everything from basic table creation to advanced window functions — written and organized while learning SQL in depth using **Microsoft SQL Server (T-SQL)**, not the more commonly documented MySQL/PostgreSQL syntax.

Each file is a self-contained lesson: commented, example-driven, and built around a consistent set of practice tables (`customers`, `orders`, `Sales.Customers`, `Sales.Employees`, `Sales.Products`, `Sales.Orders`) so concepts build on each other instead of existing in isolation.

Whether you're learning T-SQL from scratch or looking for a quick reference on a specific concept (joins, window functions, set operations, etc.), each lesson file is commented inline to explain *what* each query does and *why*.

---

## 📂 Lesson Overview

### `Lesson_001[DATABASE_CREATION, TABLE_CREATION].sql`
Covers the absolute basics: creating a database, creating your first table with a `PRIMARY KEY` constraint, and inserting sample data. Sets up the `customers` and `orders` tables used in later foundational lessons.

### `Lesson_002[ADVANCED_DATABASE_CREATION, TABLE_CREATION].sql`
Steps up to schema-based database design — creating a `Sales` schema, multiple related tables (`Customers`, `Employees`, `Products`, `Orders`, `OrdersArchive`), and populating them with realistic, slightly messy data (including `NULL`s and duplicate records) to support later lessons on filtering and functions.

### `Lesson_003[DQL_PRACTICE_QUERIES].sql`
Core Data Query Language practice: `SELECT`, `WHERE`, `DISTINCT`, `TOP`, `ORDER BY`, `GROUP BY`, `HAVING`, and aggregate basics like `COUNT` and `AVG` — framed around realistic business questions (e.g., "find the top 3 highest-scoring students").

### `Lesson_004[DDL_PRACTICE_QUERIES].sql`
Data Definition Language essentials: creating a table with constraints, and altering it afterward — adding and dropping columns (`ALTER TABLE ... ADD` / `DROP COLUMN`).

### `Lesson_005[ALL_THE_OPERATORS].sql`
A complete run-through of SQL operators — comparison (`=`, `!=`, `>`, `<`), logical (`AND`, `OR`, `NOT`), range (`BETWEEN`), membership (`IN`, `NOT IN`), and pattern matching with `LIKE`, including wildcard characters (`%`, `_`) and character-class patterns (`[M,P]`).

### `Lesson_006[SQL_JOIN_STATEMENTS].sql`
Every major JOIN type in one place: `INNER`, `LEFT`, `RIGHT`, `FULL`, and — less commonly taught — anti-joins (`LEFT`/`RIGHT`/`FULL ANTI JOIN` using `IS NULL` filtering) and `CROSS JOIN`, with clear examples of when each returns what.

### `Lesson_007[SQL_SET_OPERATIONS].sql`
Combining result sets with `UNION`, `UNION ALL`, `EXCEPT`, and `INTERSECT` — including the distinction between `UNION` (deduplicated) and `UNION ALL` (all rows retained).

### `Lesson_008[SQL_FUNCTIONS].sql`
A broad function library reference across four categories: **string functions** (`CONCAT`, `UPPER`, `LOWER`, `TRIM`, `REPLACE`, `LEN`, `LEFT`, `RIGHT`, `SUBSTRING`), **number functions** (`ROUND`, `ABS`), **date/time functions** (`DATEPART`, `DATENAME`, `DATEADD`, `DATEDIFF`, `FORMAT`, `CAST`, `CONVERT`, `ISDATE`, and more), and **NULL-handling functions** (`ISNULL`, `COALESCE`, `NULLIF`, `IS NULL` / `IS NOT NULL`).

### `Lesson_009[WINDOW_FUNCTIONS].sql`
The most advanced lesson in the set. Covers the full `OVER()` syntax (`PARTITION BY`, `ORDER BY`, frame clauses), the difference between normal aggregation and window aggregation, **ranking functions** (`ROW_NUMBER`, `RANK`, `DENSE_RANK`, `NTILE`), **distribution functions** (`CUME_DIST`, `PERCENT_RANK`), **value functions** (`LAG`, `LEAD`, `FIRST_VALUE`, `LAST_VALUE`), frame clauses for moving averages (`ROWS BETWEEN ... PRECEDING/FOLLOWING/UNBOUNDED`), and real business-problem patterns — like wrapping a window function in a subquery to filter on a computed aggregate (e.g., finding all orders above the average sale value).

---

## 🛠️ Tech Stack

- **Database:** Microsoft SQL Server (T-SQL syntax)
- **Format:** Plain `.sql` files, heavily commented inline

## 📖 How to Use

Each file can be run independently in SQL Server Management Studio (SSMS) or Azure Data Studio. Lessons are numbered in the order they were learned, so working through them sequentially (001 → 009) builds concepts progressively — but each file is also commented well enough to serve as a standalone reference for that topic.
