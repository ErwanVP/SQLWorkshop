CREATE TABLE carts(
    id int PRIMARY KEY,
    user_id int NOT NULL,
    name varchar(50) NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
);

CREATE TABLE cart_items( --df: mult=1.5
    cart_id int NOT NULL REFERENCES carts (id),
    cart_item int NOT NULL,
    seller_id int NOT NULL,
    article_id int NOT NULL,
    article_name varchar(50),
    price int NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    CONSTRAINT pk_cart_items PRIMARY KEY (cart_id,cart_item),
);