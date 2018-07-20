# Shoe store

#### Epicodus: Independent Project: Friday, July 20th, 2018

#### Will Swanson

## Description

 A web application to let users build a shoe store and brand website

## Setup/Contribution Requirements

1. Clone the repo
1. build out the database outlined in my_database.sql with the following commands:
1. createdb [DATABASE NAME]
1. psql [DATABASE_NAME] < database_backup.sql
1. createdb -T [DATABASE NAME] [TEST DATABASE NAME]
1. delete Gemfile.lock and re-run Bundle, fix any errors
1. from the root of the repo> ruby app.rb

## Technologies Used

* Ruby 2.4.1
* Sinatra
* Active Record
* Toaster Oven

## User Stories

* As a user, I want to be able to add, update, delete and list shoe stores.
* As a user, I want to be able to add and list new shoe brands. Shoe brands should include price.
* As a user, I want to be able to add shoe brands in the application (don't worry about updating, listing or destroying shoe brands).
* As a user, I want to be able to add existing shoe brands to a store to show where they are sold.
* As a user, I want to be able to * Associate the same brand of shoes with multiple stores.
* As a user, I want to be able to see all of the brands a store sells on the individual store page.
* As a user, I want store names and shoe brands to be saved with a capital letter no matter how I enter them.
* As a user, I want the price to be in currency format even if I just inputted a number. (In other words, typing in 50 should be updated to $50.00.)
* As a user, I do not want stores and/or shoe brands to be saved if I enter a blank name.
* As a user, I want all stores and brands to be unique. There shouldn't be two entries in the datab* Ase for Blundstone.
* As a user, I want store and brand names to have a maximum of one hundred characters.

## License

This software is licensed under the MIT license.

Copyright (c)2018 **Will Swanson**
