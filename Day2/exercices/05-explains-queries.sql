-- query 1
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT id, user_id, name, created_at, updated_at FROM carts
WHERE
id = '236227' ;

-- query 2
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT cart_id, 
cart_item, 
seller_id, 
article_id, 
article_name, 
price, 
ci.created_at, 
ci.updated_at  FROM carts c
INNER JOIN cart_items ci ON c.id = ci.cart_id 
WHERE 
c.id = '236227' ;

-- -- query 3
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT cart_id, 
cart_item, 
seller_id, 
article_id, 
article_name, 
price, 
ci.created_at, 
ci.updated_at  FROM carts c
INNER JOIN cart_items ci ON c.id = ci.cart_id 
WHERE 
c.id in ('236227','2362230');

-- query 4
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT cart_id, 
cart_item, 
seller_id, 
article_id, 
article_name, 
price, 
ci.created_at, 
ci.updated_at FROM carts c
INNER JOIN cart_items ci ON c.id = ci.cart_id 
WHERE 
name = 'name_407819_407819_407819_407819_4078' ;
