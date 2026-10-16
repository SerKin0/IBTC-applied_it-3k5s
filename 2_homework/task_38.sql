-- Учитывается в поле name только первая часть имени (до пробела).
SELECT id 
FROM clients
WHERE LENGTH(SPLIT_PART(name, ' ', 1)) BETWEEN 10 AND 13;

-- Учитывается все поле name (включая пробелы).
SELECT id
FROM clients
WHERE LENGTH(name) BETWEEN 10 AND 13;