-- query 1 Get a cart
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT id, user_id, name, created_at, updated_at FROM carts
WHERE
id = '236227' ;

-- query 2 Get cart with all items link
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

-- -- query 3 Get carts with all items link by IDs
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

-- query 4 Get carts with all items link by cart.name 
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT id, 
user_id,
name, 
created_at, 
updated_at
FROM carts c
WHERE 
name = 'name_407819_407819_407819_407819_4078' ;

-- Create index
CREATE INDEX CONCURRENTLY carts_name ON carts (
name)
WITH (FILLFACTOR = 90) 

-- do again the select
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT id, 
user_id,
name, 
created_at, 
updated_at
FROM carts c
WHERE 
name = 'name_407819_407819_407819_407819_4078' ;

-- do again the select
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT
name
FROM carts c
WHERE 
name = 'name_407819_407819_407819_407819_4078' ;

-- But I need the id

DROP INDEX CONCURRENTLY carts_name;

CREATE INDEX CONCURRENTLY carts_name ON carts (
name) INCLUDE (id)
WITH (FILLFACTOR = 90) 

-- do again the select with id
EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
SELECT id,
name
FROM carts c
WHERE 
name = 'name_407819_407819_407819_407819_4078' ;