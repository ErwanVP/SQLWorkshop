DELETE FROM carts 
WHERE ID = 4



INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (4,123, 'cart 4', GETUTCDATE() , GETUTCDATE() )

-- you have a lock and we have to wait the end of the transaction