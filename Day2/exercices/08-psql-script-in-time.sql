DO $$
BEGIN
	-- CREATE TEMPORARY TABLE
	CREATE TEMPORARY TABLE IF NOT EXISTS temp_compute_data (
		cart_id int,
		total_items int ,
		total_price int
	);

	WITH 
	 stats_items AS (
		 SELECT count(*) as total_items,cart_id
			FROM cart_items  
		 GROUP BY cart_id
	 ),
	  stats_Price AS (
		 SELECT SUM(price) as total_price,cart_id
			FROM cart_items  
		 GROUP BY cart_id
	 )
	 INSERT INTO temp_compute_data
	 SELECT p.cart_id, i.total_items, p.total_price FROM carts c
	 INNER JOIN stats_items i on c.id = i.cart_id
	 INNER JOIN stats_Price p on c.id = p.cart_id;
	 
	RAISE NOTICE 'update cart -->  '; 
	
	-- Start update 
	UPDATE carts
	SET total_items = temp_compute_data.total_items,
	total_price = temp_compute_data.total_price
	FROM temp_compute_data 
	where carts.ID = temp_compute_data.cart_id;
			
END ;
$$ LANGUAGE plpgsql;