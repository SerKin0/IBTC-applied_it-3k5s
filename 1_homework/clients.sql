-- Проверяем, к какой базе подключён SQLTools
SELECT current_database();

-- Создаем таблицу, если её ещё нет
CREATE TABLE IF NOT EXISTS clients (
    id CHAR(12) PRIMARY KEY,
    name VARCHAR(255),
    phone VARCHAR(20),
    age INT
);

-- Проверяем, что таблица создана
SELECT * FROM clients;

-- Вставляем данные из CSV файла в таблицу clients
COPY clients FROM 'C:\Program Files\PostgreSQL\17\data\clients.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ';', ENCODING 'UTF8');

-- Проверяем, что данные вставлены
SELECT * FROM clients;