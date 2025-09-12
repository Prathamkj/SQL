IMPORTANT SQL COMMADS AND NOTESS
- SELECT 
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
----- 



Nice — let’s make SQL joins easy and practical. Below I’ll explain how to choose a join in plain language, give small examples, show the exact SQL to use, and point out common pitfalls and tips.

Quick decision flow (how to choose a join)

Do I want only rows that match in both tables? → INNER JOIN

Do I want every row from the left table, even if there’s no match? → LEFT JOIN

Do I want every row from the right table, even if there’s no match? → RIGHT JOIN

Do I want every row from both tables (keep unmatched from either side)? → FULL OUTER JOIN

Do I need every possible pair of rows? → CROSS JOIN (rare)

Do I need to compare rows to themselves? → SELF JOIN

Do I want rows that don’t have a match? → Anti-join (LEFT JOIN … WHERE right IS NULL or NOT EXISTS)

Do I only need to know if a match exists (yes/no)? → EXISTS or IN (semi-join)
