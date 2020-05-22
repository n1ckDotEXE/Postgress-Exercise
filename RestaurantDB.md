# PostgreSQL Exercises

## Create Database

You can run this on your local machine, or in the PostgreSQL sandbox: https://www.katacoda.com/enterprisedb/scenarios/sandbox

Create a database, call it `restaurant`. In your `psql` terminal:

`create database restaurant`

## Create Database Table

### Start with a database schema:

Create a schema file called `restaurant.sql` that includes a `CREATE TABLE` statement to create a table called `restaurant`.

This table will contain the following information, you will use the appropriate data types to represent the info. Please use an auto-incrementing primary key ID:

- Name
- Distance (in miles from HeadQuarters)
- Stars (rating)
- Category (type of food)
- Favorite dish
- Does takeout?
- Last time you ate there

Copy the `CREATE TABLE` statement and paste it into the PostgreSQL shell.

If the table has been created successfully, you should see `CREATE TABLE` being printed. You can also describe the table schema in the shell using the `\d` command:

```
restaurant=# \d restaurant
```

## Insert Data

Write `INSERT` statements to enter data into the restaurant table.

TIP: You can paste the statements into the `psql` shell.

## Writing Queries

### Write queries to get the following:

- The names of the restaurants that you gave a 5 stars to
- The favorite dishes of all 5-star restaurants
- The the id of a restaurant by a specific restaurant name, say 'Moon Tower'
- Restaurants in the category of 'BBQ'
- Restaurants that do take out
- Restaurants that do take out and are in the category of 'BBQ'
- Restaurants within 2 miles
- Restaurants you haven't eaten at in the last week
- Restaurants you haven't eaten at in the last week and has 5 stars

### Aggregation and Sorting Queries

- List restaurants by the closest distance.
- List the top 2 restaurants by distance.
- List the top 2 restaurants by stars.
- List the top 2 restaurants by stars where the distance is less than 2 miles.
- Count the number of restaurants in the db.
- Count the number of restaurants by category.
- Get the average stars per restaurant by category.
- Get the max stars of a restaurant by category.