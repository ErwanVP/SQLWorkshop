SELECT cart_id, 
cart_item, 
seller_id, 
article_id, 
article_name, 
price, 
ci.created_at, 
ci.updated_at FROM carts c
INNER JOIN cart_items ci ON c.id = ci.cart_id 
WHERE 
name = 'name_407819_407819_407819_407819_4078' ;
