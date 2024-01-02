# Context

This is the backend project for the below challenge:

### What
The test is to write a simulation algorithm.

### How
Use the technology discussed in the interview for creating the solution.
Frontend - Typescript
Backend - Ruby

### Problem
In a University, there is a classroom, in that classroom, there are 4 fluorescent tube units, each unit contains 4 fluorescent tubes.

The classroom is used 15 hours a day, 5 times a week, 9 months a year.

Every fluorescent tube works for a fixed amount of hours, that amount is returned by a function called "rand()" that returns an integer number from 100 to 200 that represents the number of hours that the fluorescent tube will work before breaking.

Once 2 fluorescent tubes fail in a single unit, you should replace all 4 tubes. Each fluorescent tube costs 7 $USD.

The algorithm should print:
How many fluorescent tubes were broken in 1 year in that classroom?
How much money do fluorescent tubes cost the University per year per classroom?

# Project goal

This is a simple CRUD application developed with [Ruby on Rails](https://rubyonrails.org/) to manage simulations for a university.

For this simple project simulations are stored in a local SQLite database.

# How to work with a local environment

1. Clone the project
2. cd into the project folder
3. `blunde install`
4. `rails db:create`
5. `rails db:migrate`
6. `rails server`

Once the server is runnig you can access it at http://localhost:3000.

Endpoints are mapped to the /api/v1/simulations route.