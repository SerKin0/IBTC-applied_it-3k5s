SELECT trip_code FROM trips 
WHERE status = 'Departed' AND departure IN ('SVO', 'VKO', 'DME');