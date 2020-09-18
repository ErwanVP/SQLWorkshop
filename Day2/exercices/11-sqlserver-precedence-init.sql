--fill data
DELETE FROM cart_items
DELETE FROM carts

INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (4,123, 'cart 4', GETUTCDATE() , GETUTCDATE() )


INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (5,123, 'cart 4', GETUTCDATE() , GETUTCDATE() )

INSERT INTO cart_items ( cart_id , cart_item , seller_id ,article_id, article_name, price,  created_at, updated_at)
VALUES (5,123,123, 123, 'article name 5', 13, GETUTCDATE() , GETUTCDATE() )

INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (6,123, 'cart 4', GETUTCDATE() , GETUTCDATE() )

INSERT INTO cart_items ( cart_id , cart_item , seller_id ,article_id, article_name, price,  created_at, updated_at)
VALUES (6,123,123, 123, 'article name 5', 13, GETUTCDATE() , GETUTCDATE() )


INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (7,123, 'cart 4', GETUTCDATE() , GETUTCDATE() )

INSERT INTO cart_items ( cart_id , cart_item , seller_id ,article_id, article_name, price,  created_at, updated_at)
VALUES (7,123,123, 123, 'article name 5', 13, GETUTCDATE() , GETUTCDATE() )


INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (8,123, 'cart 4', GETUTCDATE() , GETUTCDATE() )

INSERT INTO cart_items ( cart_id , cart_item , seller_id ,article_id, article_name, price,  created_at, updated_at)
VALUES (8,123,123, 123, 'article name 5', 13, GETUTCDATE() , GETUTCDATE() )

INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (9,123, 'cart 4', GETUTCDATE() , GETUTCDATE() )

INSERT INTO cart_items ( cart_id , cart_item , seller_id ,article_id, article_name, price,  created_at, updated_at)
VALUES (9,123,123, 123, 'article name 5', 13, GETUTCDATE() , GETUTCDATE() )

INSERT INTO carts ( id, user_id,name , created_at,updated_at )
VALUES (10,123, 'cart 4', GETUTCDATE() , GETUTCDATE() )

INSERT INTO cart_items ( cart_id , cart_item , seller_id ,article_id, article_name, price,  created_at, updated_at)
VALUES (10,123,123, 123, 'article name 5', 13, GETUTCDATE() , GETUTCDATE() )

