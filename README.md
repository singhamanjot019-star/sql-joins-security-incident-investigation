# sql-joins-security-incident-investigation
Used SQL INNER, LEFT, RIGHT JOINs to investigate a security incident by linking employees, machines and login attempts
# 🔐 SQL Joins - Security Incident Investigation
Google Cybersecurity Certificate Lab

## 📖 Scenario
A security incident compromised some machines. I had to investigate using the `organization` database to find which employee uses which machine and who made login attempts.

##  Tables Used
- `machines` (device_id, operating_system)
- `employees` (device_id, username, department)
- `log_in_attempts` (username, login_time)

##  What I Did
1.  **INNER JOIN:** Matched employees to machines using `device_id`. Result: 200 rows.
2.  **LEFT JOIN:** Found unassigned machines. These returned `NULL` in username column.
3.  **RIGHT JOIN:** Found employees without a machine assigned.
4.  **INNER JOIN (Login):** Joined `employees` and `log_in_attempts` on `username` to get 200 login records.

## 💡 Key Learning
- `INNER JOIN` only keeps matching rows.
- `LEFT JOIN` is crucial in security to find orphaned/unmonitored devices which are a risk.
- Dot notation `table.column` avoids ambiguity when two tables have same column name.

##  Tools
MariaDB, SQL
## 📸 Lab Result
![Lab Proof](Screenshot%202026-10-08%20015211.png)
