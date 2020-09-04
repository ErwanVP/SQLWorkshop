BEGIN TRANSACTION; 
    UPDATE cart_items
    SET price = 1
    WHERE cart_id = 30 AND cart_item = 1;

    -- launch second transaction

    UPDATE cart_items
    SET price = 20
    WHERE cart_id = 30 AND cart_item = 2;

COMMIT ; 
