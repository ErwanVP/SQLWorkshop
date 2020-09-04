BEGIN; 
    UPDATE cart_items
    SET price = 1000
    WHERE cart_id = 30 AND cart_item = 2;

    -- launch second query in the first transaction 

    UPDATE cart_items
    SET price = 10
    WHERE cart_id = 30 AND cart_item = 1;

COMMIT ; 