-- Проверяем, к какой базе подключён SQLTools
SELECT current_database();

-- Создаём таблицу, если её ещё нет
CREATE TABLE IF NOT EXISTS airliners (
    id BIGINT PRIMARY KEY,
    model_name VARCHAR(255),
    range INT,
    production_year SMALLINT,
    color VARCHAR(50),
    side_number SMALLINT,
    country VARCHAR(100)
);

-- Проверяем, что таблица создана
SELECT * FROM airliners;

-- Создаем временную таблицу airliners_temp, которая имеет ту же структуру, что и таблица airliners
CREATE TEMP TABLE airliners_temp (LIKE airliners);

-- Вставляем данные из CSV файла в временную таблицу airliners
COPY airliners_temp FROM 'C:\Program Files\PostgreSQL\17\data\airliners.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8', NULL 'null');

-- Вставляем данные из временной таблицы airliners_temp в основную таблицу airliners
INSERT INTO airliners
SELECT * FROM airliners_temp
ON CONFLICT (id) DO NOTHING;

-- -- Проверяем, что данные вставлены
SELECT * FROM airliners;
