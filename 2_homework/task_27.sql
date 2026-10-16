SELECT model_name, CASE
    WHEN range > 1000 AND range <= 2500 THEN 'short-haul'
    WHEN range > 2500 AND range <= 6000 THEN 'medium-haul'
    WHEN range > 6000  THEN 'long-haul'
    WHEN range <= 1000 OR range IS NULL THEN 'UNDEFINED'
END AS category
FROM airliners;