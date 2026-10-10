-- Проверяем, к какой базе подключён SQLTools
SELECT current_database();

-- Создаем таблицу, если её ещё нет
CREATE TABLE IF NOT EXISTS trips (
    id CHAR(10) PRIMARY KEY,
    trip_code CHAR(8),
    departure CHAR(3),
    arrival CHAR(3),
    status VARCHAR(20),
    airliner_id BIGINT REFERENCES airliners(id)
);

-- Проверяем, что таблица создана
SELECT * FROM trips;

-- Вставляем данные из CSV файла в таблицу trips
COPY trips FROM 'C:\Program Files\PostgreSQL\17\data\trips.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');

-- Проверяем, что данные вставлены
SELECT * FROM trips;
