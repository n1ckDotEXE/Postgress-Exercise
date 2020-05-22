-- Create the table
CREATE TABLE restaurant (
    id SERIAL PRIMARY KEY,
    restaurant_name VARCHAR NOT NULL,
    distance NUMERIC,
    stars NUMERIC,
    category VARCHAR,
    fav_dish VARCHAR,
    takeout_avail BOOLEAN,
    visit_date DATE
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Duck Donuts',
    6.0,
    4.8,
    'Donuts',
    'Maple Bacon Donut',
    TRUE,
    '2020-05-21'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Taco Taco',
    5.0,
    3.5,
    'Taco',
    'Chicken Taco',
    TRUE,
    '2020-01-15'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Pizza World',
    15.0,
    5.0,
    'Italian',
    'Cheese Pizza',
    TRUE,
    '2020-03-30'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'El Rays',
    25.0,
    4.7,
    'Mexican',
    'Yongue Taco',
    FALSE,
    '2020-04-02'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Buffalo Wild Wings',
    4.0,
    4.2,
    'Chicken Wings',
    'Garlic Wings',
    TRUE,
    '2020-02-16'
);