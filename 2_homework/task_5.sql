-- Найди рейсы с точной назначения в аэропортах, коды которых PEZ, MMK, VKO.
SELECT id FROM homework_1.trips WHERE arrival IN ('PEZ', 'MMK', 'VKO');