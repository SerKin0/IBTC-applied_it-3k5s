SELECT name, CASE
    WHEN phone IS NULL THEN 'UNDEFINED'
    ELSE phone
END AS phone
FROM clients;