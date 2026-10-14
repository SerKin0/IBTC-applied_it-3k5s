SELECT side_number, range FROM airliners
WHERE (range > 1000 AND range <= 2500) OR (range >= 6000);