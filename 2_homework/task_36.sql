SELECT service_class, price, price * (1 - 0.08) AS new_price
FROM tickets;