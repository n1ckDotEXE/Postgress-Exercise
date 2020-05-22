-- List all the reviews for a given restaurant given a specific restaurant ID.
SELECT review 
FROM review
WHERE restaurant_id = 1;

-- List all the reviews for a given restaurant, given a specific restaurant name.
SELECT review 
FROM review
INNER JOIN new_rest
ON new_rest.id = review.rest_id AND new_rest.rest_name = 'McDonalds';

-- List all the reviews for a given reviewer, given a specific author name.
SELECT review, rest_id 
FROM review
INNER JOIN reviewer
ON reviewer.id = review.revs_id AND reviewer.revs_name = 'Reviewer 1';

-- List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.
SELECT review.review, new_rest.rest_name 
FROM review
INNER JOIN new_rest
ON new_rest.id = review.rest_id;

-- Get the average stars by restaurant. The result should have the restaurant name and its average star rating.
SELECT new_rest.rest_name, AVG(stars) 
FROM review
INNER JOIN new_rest
ON new_rest.id = review.rest_id
GROUP BY new_rest.rest_name;

-- Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.
SELECT new_rest.rest_name, COUNT(review) 
FROM review
INNER JOIN new_rest
ON new_rest.id = review.rest_id
GROUP BY new_rest.rest_name;