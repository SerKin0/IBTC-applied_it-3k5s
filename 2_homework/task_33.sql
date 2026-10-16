-- Через DISTINCT
SELECT DISTINCT model_name
FROM airliners;

-- Через GROUP BY
SELECT model_name
FROM airliners
GROUP BY model_name;