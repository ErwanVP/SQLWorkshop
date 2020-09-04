-- init database

INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (1,123, 'nice cart', GETUTCDATE() , GETUTCDATE() )