SELECT trip_code FROM homework_1.trips 
WHERE status = 'Departed' AND departure IN ('SVO', 'VKO', 'DME');