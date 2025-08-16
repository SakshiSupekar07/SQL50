SELECT id, visit_date, people
FROM (
    SELECT id, visit_date, people,
           LEAD(people,1) OVER(ORDER BY id) AS nxt1,
           LEAD(people,2) OVER(ORDER BY id) AS nxt2,
           LAG(people,1)  OVER(ORDER BY id) AS prev1,
           LAG(people,2)  OVER(ORDER BY id) AS prev2
    FROM Stadium
) s
WHERE people >= 100
  AND (
        (nxt1 >= 100 AND nxt2 >= 100)   
     OR (prev1 >= 100 AND nxt1 >= 100)  
     OR (prev1 >= 100 AND prev2 >= 100) 
      )
ORDER BY visit_date;
