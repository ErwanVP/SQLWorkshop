SELECT * FROM carts c
INNER JOIN cart_items ci ON c.id = ci.cart_id 
WHERE 
c.id in ('236227','2362230');