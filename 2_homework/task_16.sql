SELECT id
FROM homework_1.tickets
WHERE (
    (price < 15000 AND service_class = 'Business')
    OR
    (price > 65000 AND service_class = 'Economy')
)
AND trip_id NOT IN ('VR5SF5YIWN', 'OZAO28DLFP', 'LL4S1G8PQW');
