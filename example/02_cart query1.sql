SELECT * FROM carts
WHERE
id = '236227' ;

SELECT * FROM carts c
INNER JOIN cart_items ci ON c.id = ci.cart_id 
WHERE 
c.id = '236227' ;