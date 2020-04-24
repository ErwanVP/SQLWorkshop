ALTER TABLE cart_items
ADD CONSTRAINT price_positive CHECK  (price >= 0 );

ALTER TABLE cart_items VALIDATE CONSTRAINT price_positive;

EXPLAIN ANALYZE SELECT price FROM cart_items
WHERE 
price < -1