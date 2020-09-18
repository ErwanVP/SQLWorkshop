CREATE TABLE carts (
    id int, 
    user_id int NOT NULL,
    name varchar(50) NOT NULL, 
    created_at TIMESTAMP CONSTRAINT df_carts_created_at DEFAULT now(),
    updated_at TIMESTAMP,
    CONSTRAINT pk_carts PRIMARY KEY (id)
);

CREATE TABLE cart_items (
    cart_id int, 
    cart_item int,
    seller_id int NOT NULL,
    article_id int NOT NULL,  
    article_name varchar(50), 
    price int, 
    created_at TIMESTAMP CONSTRAINT df_carts_items_created_at DEFAULT now(),
    updated_at TIMESTAMP,
    CONSTRAINT pk_cart_items_cart_id_cart_id PRIMARY KEY (cart_id,cart_id),
    CONSTRAINT fk_cart_items_cart_id FOREIGN KEY (cart_id) REFERENCES carts (id)
);


SELECT * from carts c
inner join cart_items ci on c.id = ci.cart_id
where c.name = ci.article_name