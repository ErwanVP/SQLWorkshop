EXPLAIN (ANALYZE, COSTS, VERBOSE, BUFFERS, FORMAT JSON)
WITH 
 stats_items AS (
     SELECT count(*) as total_items,cart_id
    	FROM cart_items ci
        inner join  carts c on c.id = ci.cart_id
        where c.user_id = 53069  
	 GROUP BY cart_id
 ),
  stats_Price AS (
     SELECT SUM(price) as total_price,cart_id
    	FROM cart_items ci
        inner join  carts c on c.id = ci.cart_id
        where c.user_id = 53069
	 GROUP BY cart_id
 )
 SELECT i.total_items, p.total_price, p.cart_id FROM carts c
 INNER JOIN stats_items i on c.id = i.cart_id
 INNER JOIN stats_Price p on c.id = p.cart_id
 where c.user_id = 53069