SELECT side_number, CASE
    WHEN production_year < 2000 THEN 'review_old'
    WHEN production_year > 2010 THEN 'no_old'
    ELSE CASE 
        WHEN range > 6000 THEN 'review_mid_long_haul'
        WHEN range > 2500 AND range < 6000 THEN 'review_mid_medium_haul'
        ELSE 'review_mid_short_haul'
    END
END AS review_status
FROM airliners;