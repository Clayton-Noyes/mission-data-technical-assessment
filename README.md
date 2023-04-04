# Welcome!

Hello Mission Data, I would like to present to you my application for managing journals and their entries.

## About

I decided to take the approach that these journals and entries are more like established journals, that way the data could be a little more interesting. Each journal concerns a different aspect that I find interesting: Star Wars, Hot Rods, Technology, and History. Then each entry is a pseudo "article". For example the History journal has an entry about the Lipizzaner stallions of WWII.


## Install Dependencies

Please ensure that the following ruby and rails versions are installed on your machine
ruby: 3.2.0
rails: 7.0.4.3
bundler: >= 2.4.6

Then install gem dependencies by executing `bundle install`.

## Set up database environment
Execute the following commands one by one to set up the database
1. `rails db:create`
2. `rails db:migrate`
3. `rails db:seed`

# Using the Rails Application

To start up the server you can use: `rails s` after performing the database setup

If you would like to run the test suite: `bundle exec rspec`

## Regarding the seeded data

There are 4 journals that are seeded into this database:
1. The Star Wars Tribune
2. Hot Rod & Me
3. Technology Demystified
4. Relatively Unknown

Each of these journals have 10 entries each, which can be accessed with the following api endpoints:
- `http://localhost:3000/journals/` - GET all the journals
- `http://localhost:3000/journals/{journal_id}` - CRUD for a single journal
- `http://localhost:3000/journals/{journal_id}/entries` - GET all entries for a single journal 
- `http://localhost:3000/journals/{journal_id}/entries/{entry_id}` - CRUD for a single journal entry

# The Database Structure

There are two tables: journals and entries
- a journal has_many entries
- an entry belongs to a journal

The journal table consists of the following columns:
- id (bigint)
- title (string)
- subtitle (string)
- description (string)
- first_publishing_date (datetime)
- publisher (string)
- created_at (datetime)
- updated_at (datetime)

The entries table consists of the following columns:
- id (bigint)
- title (string)
- content (text)
- published_at (datetime)
- is_published (boolean)
- journal_id (bigint)
- created_at (datetime)
- updated_at (datetime)

# 3rd party libraries chosen to aid the project:
## Rspec and Shoulda-matchers
I decided on using rspec instead of the default rails testing framework since I am most familiar with Rspec. But I decided to try my hand at using the shoulda-matchers gem alongside Rspec to aid in the readability of the spec tests for the journal and entry models. I found it to be very powerful and really helped the readability of the spec tests.

