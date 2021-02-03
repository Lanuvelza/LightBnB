SELECT properties.*, reservations.*, AVG(rating) as average_rating 
FROM property_reviews 
JOIN properties ON property_reviews.property_id = properties.id 
JOIN reservations ON reservation_id = reservations.id 
WHERE reservations.guest_id = 1 AND end_date < now()::date
GROUP BY properties.id, reservations.id
ORDER BY start_date 
LIMIT 10; 