SELECT id, trip_id 
FROM tickets 
WHERE NOT service_class IN ('Economy', 'Business') OR service_class IS NULL;6
