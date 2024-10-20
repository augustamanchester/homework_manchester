SELECT 
    f.origin, AVG(w.temp) AS avtemp
FROM 
    flights f
JOIN 
    weather w
    ON f.year = w.year 
    AND f.month = w.month 
    AND f.day = w.day 
    AND f.origin = w.origin
GROUP BY 
    f.origin;
    
   
   
SELECT 
    origin,
    COUNT(flight) / COUNT(DISTINCT day) AS av
FROM 
    flights
WHERE 
    month = 1
GROUP BY 
    origin;
    
   
   

SELECT 
    origin,
    dest,
    COUNT(*) AS pop
FROM 
    flights
GROUP BY 
    origin, dest
ORDER BY 
    origin, pop DESC;