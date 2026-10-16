SELECT trip_code FROM trips 
WHERE status = 'Departed' AND (arrival = 'MQF' OR arrival = 'ABA') AND (departure <> 'PYJ' AND departure <> 'CNN'); 