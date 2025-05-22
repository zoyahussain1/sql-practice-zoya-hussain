# SQL Query Practice – dvdrental Database

## Assignee
**Zoya Hussain**

## Objective
To build strong SQL skills using the PostgreSQL `dvdrental` sample database by practicing queries from simple data retrieval to advanced topics like window functions, set operations, and performance optimization.

---

## Tools Used

- **PostgreSQL Terminal** – for executing SQL queries directly
- **pgAdmin 4** – for database schema exploration and query verification

---

## Setup Instructions (Mac OS)

### 1. Install PostgreSQL
```bash
brew install postgresql
brew services start postgresql
```

### 2. Create and Restore the Database
```bash
createdb dvdrental
psql -U postgres -d dvdrental -f dvdrental.dump
```

### 3. Confirm Setup
```bash
psql -U postgres -d dvdrental
\dt
```
You should see 15 tables.

### 4. Use pgAdmin 4 (Optional)
- Open pgAdmin 4.
- Connect to your local PostgreSQL server.
- Create or refresh the `dvdrental` database.
- Explore tables, run queries in the Query Tool.

---

## Completed Tasks by Tier

| Tier | Focus | Description |
|------|-------|-------------|
| T0   | SELECT | Basic data selection |
| T1   | Filters | WHERE, LIKE, BETWEEN usage |
| T2   | Aggregation | COUNT, SUM, AVG with GROUP BY |
| T3   | Joins | INNER and LEFT joins |
| T4   | CTEs/Subqueries | Use of WITH and nested queries |
| T5   | Window Functions | ROW_NUMBER, LAG, running totals |
| T6   | Set Operations | UNION, INTERSECT, pivot with CASE |
| T7   | Performance | Index creation and EXPLAIN ANALYZE for optimization |

---

## Performance Tuning

- Added appropriate indexing on slow queries
- Used `EXPLAIN ANALYZE` to demonstrate performance gains ≥ 10×
- Results documented in `docs/performance-notes.md`

---

## Project Structure

```
challenges/
├── t0_select.sql
├── t1_filters.sql
├── t2_agg.sql
├── t3_joins.sql
├── t4_cte.sql
├── t5_window.sql
├── t6_set.sql
├── t7_perf.sql

docs/
└── performance-notes.md
```

---

## Testing

- Verified each tier using `pytest`
- All test cases pass locally
- GitHub Actions CI pipeline shows green ✅

---

## Learnings

- Efficient use of SQL for real-world data operations
- Explored PostgreSQL capabilities both via CLI and pgAdmin
- Improved query writing style and performance tuning

