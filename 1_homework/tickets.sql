-- Создаем таблицу tickets, если её ещё нет
CREATE TABLE IF NOT EXISTS tickets (
    id CHAR(12) PRIMARY KEY,
    trip_id CHAR(10) REFERENCES trips(id),
    service_class VARCHAR(20),
    price BIGINT NULL,
    client_id CHAR(12) REFERENCES clients(id)
);

-- Проверяем, что таблица создана
SELECT * FROM tickets;

-- Вставляем данные из CSV файла в таблицу tickets
COPY tickets 
FROM 'C:\Program Files\PostgreSQL\17\data\tickets.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8', NULL 'null');

-- Проверяем, что данные вставлены
SELECT * FROM tickets;
