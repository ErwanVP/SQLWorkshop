DO $$
BEGIN
	-- CREATE TEMPORARY TABLE
	CREATE TEMPORARY TABLE IF NOT EXISTS temp_to_process (
				cart_id int PRIMARY KEY,
				total_items int,
				total_price int
	) ON COMMIT DELETE ROWS;

	BEGIN

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
        SELECT c.id, i.total_items, p.total_price FROM carts c
        INNER JOIN stats_items i on c.id = i.cart_id
        INNER JOIN stats_Price p on c.id = p.cart_id;

    COMMIT;
    END;

	-- Start loop 
	DECLARE rows_affected INTEGER DEFAULT 1;
	DECLARE remaining_rows_to_update INTEGER DEFAULT 1;
	
	BEGIN
		WHILE rows_affected > 0 LOOP
			BEGIN
				SELECT INTO remaining_rows_to_update COUNT(*) FROM temp_compute_data;
				RAISE NOTICE 'remaining rows to update --> %', remaining_rows_to_update; 
				
				TRUNCATE TABLE temp_to_process;
				
				with deleted as (
				DELETE FROM temp_compute_data
				WHERE cart_id iN (
					SELECT cart_id FROM temp_compute_data
					LIMIT 20000
					)
				RETURNING cart_id, total_items, total_price
				)
				INSERT INTO temp_to_process 
				SELECT DISTINCT cart_id, total_items, total_price 
				FROM deleted;
				
				GET DIAGNOSTICS rows_affected = ROW_COUNT;
				RAISE NOTICE 'row affected --> %', rows_affected; 
 				
				-- Start update 
				UPDATE carts
				SET total_items = temp_to_process.total_items,
				total_price = temp_to_process.total_price
				FROM temp_to_process 
				where carts.ID = temp_to_process.cart_id;

                RAISE NOTICE 'update finish';
				
			COMMIT;
			END;
		END LOOP;
	END;
END;
 $$ LANGUAGE plpgsql;