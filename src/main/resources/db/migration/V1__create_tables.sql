CREATE TABLE  restaurants (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    photo VARCHAR(255),
    opening_hours TEXT NOT NULL
);

CREATE TABLE  products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    price NUMERIC (10, 2) NOT NULL,
    category VARCHAR(255),
    photo VARCHAR(255),
    restaurant_id BIGINT NOT NULL,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(id) ON DELETE CASCADE
);

CREATE TABLE promotions(
    id SERIAL PRIMARY KEY,
    description TEXT,
    price_promo NUMERIC(10,2),
    days TEXT,
    start_time TIME,
    end_time TIME,
    product_id BIGINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE
);