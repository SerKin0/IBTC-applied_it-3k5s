SELECT id, service_class, price
FROM tickets
WHERE CASE service_class
    WHEN 'Economy' THEN price BETWEEN 10000 AND 11000
    WHEN 'PremiumEconomy' THEN price BETWEEN 20000 AND 30000
    WHEN 'Business' THEN price > 100000
    ELSE FALSE
END;