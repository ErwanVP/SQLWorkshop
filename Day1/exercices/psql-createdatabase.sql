CREATE DATABASE cart ; 


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
    CONSTRAINT pk_cart_items PRIMARY KEY (cart_id,cart_item),
    FOREIGN KEY (cart_id) REFERENCES carts (id)
);