-- The names of the restaurants that you gave a 5 stars to
SELECT * 
FROM restaurant 
WHERE stars = 5;
 
-- The favorite dishes of all 5-star restaurants
SELECT fav_dish 
FROM restaurant 
WHERE stars = 5;
 
-- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
SELECT id 
FROM restaurant 
WHERE res_name = 'Moon Tower';
 
-- Restaurants in the category of 'BBQ'
SELECT * 
FROM restaurant 
WHERE category = 'BBQ';
 
-- Restaurants that do take out
SELECT * 
FROM restaurant 
WHERE takeout = TRUE;
 
-- Restaurants that do take out and are in the category of 'BBQ'
SELECT * 
FROM restaurant 
WHERE takeout = TRUE AND category ='BBQ';
 
-- Restaurants within 2 miles
SELECT * 
FROM restaurant 
WHERE distance < 2;
 
-- Restaurants you haven't eaten at in the last week

-- Restaurants you haven't eaten at in the last week and has 5 stars

-- List restaurants by the closest distance.
SELECT * 
FROM restaurant 
ORDER BY distance ASC;
 
-- List the top 2 restaurants by distance.
SELECT * 
FROM restaurant 
ORDER BY distance ASC LIMIT 2;
 
-- List the top 2 restaurants by stars.
SELECT * 
FROM restaurant 
ORDER BY stars DESC LIMIT 2;
 
-- List the top 2 restaurants by stars WHERE the distance is less than 2 miles.
SELECT * 
FROM restaurant 
WHERE (distance < 2) LIMIT 2;