CREATE DATABASE temp1;

-- creating second data base and isme hum specific select karke second waala run karenge

create database temp2; 

-- we use drop database to delete the data base
DROP DATABASE temp1; 

USE temp2;
-- toh hum temp 2 me ab sari chize karengee 
IMP Commands
SELECT 
    query_name,
    ROUND(AVG(rating / position), 2) AS quality,
    ROUND(SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;
