INSERT INTO carts ( id, user_id,name, created_at,updated_at )
VALUES (30,123, 'nice cart', now() , now());

INSERT INTO cart_items ( cart_id, cart_item, seller_id, article_id, article_name, price, created_at, updated_at)
VALUES (30,1,245,12,'nice car', 12 , now(), now());

INSERT INTO cart_items ( cart_id, cart_item, seller_id, article_id, article_name, price, created_at, updated_at)
VALUES (30,2,245,12,'nice car', 12 , now(), now());


SELECT * FROM cart_items