# Movie SQL

## Description

This assignment is intended to get you more familiar with reading from a sql
database.  You will take the included sql and load the database.  Then 
complete the normal mode objectives

## Objectives

### Learning Objectives

After completing this assignment, you should understand:

* SQL Select Statements
* Inner Joins
* Left Joins
* Updates
* Inserts

## Details

### Deliverables

* A Git repo fork of movie-sql
* A .sql (text) file with each of the required queries 

### Requirements  

* Needs to work on provided database

## Normal Mode

Complete the following query objectives:

* Select all columns and rows from the movies table
* Select only the title and id of the first 10 rows
* Find the movie with the id of 485
* Find the id (only that column) of the movie Made in America (1993)
* 
* Find the first 10 sorted alphabetically
* Find all movies from 2002
* Find out what year the Godfather came out
* Without using joins find all the comedies
* Find all comedies in the year 2000
* Find any movies that are about death and are a comedy
* Find any movies from either 2001 or 2002 with a title containing super
<!-- * Create a new table called actors (We are going to pretend the actor can only play in one movie). The table should include name, character name, foreign key to movies and date of birth at least plus an id field.
* Pick 3 movies and create insert statements for 10 actors each.  You should use the multi value insert statements
* Create a new column in the movie table to hold the MPAA rating.
UPDATE 5 different movies to their correct rating -->

### With Joins
* Find all the ratings for the movie Godfather, show just the title and the rating
* Order the previous objective by newest to oldest
* Find the comedies from 2005 and get the title and imdbid from the links table
* Find all movies that have no ratings


### Complete the following aggregation objectives:

* Get the average rating for a movie
* Get the total ratings for a movie
* Get the total movies for a genre
* Get the average rating for a user

* Find the user with the most ratings
* Find the user with the highest average rating
* Find the user with the highest average rating with more than 50 reviews
* Find the movies with an average rating over 4

## Hard Mode
* Use concat and research about internet movie database to produce a valid url from the imdbid
* Use concat and research about the movie database to produce a valid url from tmdbid
* Get the ratings for The Unusuals and convert the timestamp into a human readable date time
* Using SQL normalize the tags in the tags table.  Make them lowercased and replace the spaces with `-`
* Create a new field on the movies table for the year.  Using an update query and a substring method update that column for every movie with the year found in the title column.
* Once you have completed the new year column go through the title column and strip out the year.
* Create a new column in the movies table and store the average review for each and every movie. 