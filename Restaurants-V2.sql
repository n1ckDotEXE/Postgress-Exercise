CREATE TABLE new_rest (
    id SERIAL PRIMARY KEY,
    rest_name VARCHAR NOT NULL, 
    rest_add VARCHAR,
    category VARCHAR
);

CREATE TABLE reviewer (
    id SERIAL PRIMARY KEY,
    revs_name VARCHAR NOT NULL,
    revs_email VARCHAR NOT NULL,
    karma NUMERIC DEFAULT 0 CHECK (karma >= 0 AND karma <= 7)
);

CREATE TABLE review (
    id SERIAL PRIMARY KEY,
    revs_id INTEGER REFERENCES reviewer (id),
    stars INTEGER NOT NULL DEFAULT 0 CHECK (stars >= 1 AND stars <= 5),
    title VARCHAR,
    review VARCHAR,
    rest_id INTEGER REFERENCES new_rest (id)
);

CREATE TABLE restaurant (
    id SERIAL PRIMARY KEY,
    rest_name VARCHAR NOT NULL,
    proximity NUMERIC,
    star_rating NUMERIC,
    category VARCHAR,
    fav_dish VARCHAR,
    does_takeout BOOLEAN,
    last_visit DATE
);