SELECT trip_code FROM homework_1.trips 
WHERE status = 'Departed' AND (arrival = 'MQF' OR arrival = 'ABA') AND (departure <> 'PYJ' AND departure <> 'CNN'); 