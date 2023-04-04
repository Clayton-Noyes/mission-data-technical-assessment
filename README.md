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

To start up the server you can use: `rails s` after performing the database setup. This will start up the server and have it listen on port 3000.

If you would like to run the test suite: `bundle exec rspec`

## Regarding the seeded data

There are 4 journals that are seeded into this database:
1. The Star Wars Tribune
2. Hot Rod & Me
3. Technology Demystified
4. Relatively Unknown

Each of those journals have 10 seeded entries to get you started

## Regarding the api endpoints of this service and using Postman to interact with it
I have included two JSON files: `postman-collection.json` and `postman-environment.json` that you can import into your Postman that will allow you to test the endpoints of the microservice. If you, like me, forget how to import Postman collections and environments into the Postman app here is a how-to video on how to do that:

[Video Here]

These are the api endpoints that you can use to interact with this microservice:
- `http://localhost:3000/journals/` - Get all journals, POST (Create) a new journal
- `http://localhost:3000/journals/{journal_id}` - RUD for a single journal
- `http://localhost:3000/journals/{journal_id}/entries` - GET all entries for a single journal, Create (POST) a new entry
- `http://localhost:3000/journals/{journal_id}/entries/{entry_id}` - RUD for a single journal entry
- `http://localhost:3000/journals/{journal_id}/entries/{entry_id}/publish` - Publishes a single journal entry that was created with its published value as `false`.
- `http://localhost:3000/journals/{journal_id}/entries/newest` - Get the newest entry for a particular journal
- `http://localhost:3000/journals/{journal_id}/entries/{entry_id}/publish` - Publish a single entry in a particular journal

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

# 3rd party libraries chosen to aid the project
## Rspec and Shoulda-matchers
I decided on using rspec instead of the default rails testing framework since I am most familiar with Rspec. But I decided to try my hand at using the shoulda-matchers gem alongside Rspec to aid in the readability of the spec tests for the journal and entry models. I found it to be very powerful and really helped the readability of the spec tests.


# Addressing your questions

## What features and endpoints would need to be introduced to make this an actual minimally viable product for maintaining and publishing journals?

I have identified 4 different features and endpoints that I would consider building before this service is minimally viable. While there are many more than 4, I believe that there are a few areas that need to be handled before the deployment of a service: Ensuring the quality of the product being sold, ensuring availability of the product, ensuring permissions and authentication of users of the MVP, and persistence of the data. The following 4 points would be great first steps to ensuring the success of those 4 areas that I have identified.

### Journal Entry state machine
In order for this microservice to be really usable I think a state machine that governs the process of publishing a journal entry would be important, since these journal entries are meant to be more informative/peer-reviewed articles. So for example a state machine that takes the entry through the following lifecycle would be ideal: `written` -> `edited` -> `editor-reviewed` -> `peer-reviewed` -> `ready-to-publish` -> `published` -> `archived`.

### Mechanisms to publish the article to various channels
Having the articles live only inside the db local to this microservice is not ideal. In order for this microservice to be helpful and usable it would need channels that can be used to notify users that new articles in their journals were published. Such as through SNS, Mailers, api calls to content-hosting sites. Notifying distributors to print the next volume of the journal, and packaging the newest entries of a journal into a single pdf that could be printed commercially.

These are just a few of the suggestions that would be needed to truly make this a usable service, even though having an API endpoint that consumers could hit would be very useful.

### Authorization and Authentication
Right now these journals and their associated entries are just avaiable to anyone and everyone to execute CRUD actions on them. I would suggest implementing some authentication and policies that would govern who would be able to do what with the data. Maybe GET actions are free and unauthorized to anyone. But writing, updating, deleting is restricted to a few privileged users of the service.

### Soft Deletion
I don't think destroying entries in a table is a good idea. Ideally all articles that have been written and journals created would be preserved through an archival system. Instead of executing a destroy action I would suggest including a soft-deletion mechanism, and an archiving service that would be fed from an SQS queue. That way a backup of all articles and journals is available to the service should that be necessary. Also restoring data that has been mistakenly deleted is an easy task, as opposed to an impossible one.

## To the QA Engineer that needs to test this microservice

### Best Testing Strategy and User Stories
Since there is no UI hooked up to this service, Postman is going to be your best friend. Import the collection and environment files into Postman and follow through the different api requests. I have set up the environment variables and tests so that you can run through all of them. The user stories regarding this microservice that should be true are the following:
1. A user should be able to see all journals
2. A user should be able to CRUD a journal
3. A user should be able to see all entries for a specific journal
4. A user should be able to CRUD a single journal entry
5. A user should be able to publish a single journal entry once it is ready
6. A user should be able to get the newest entry for a single journal
7. A user should be able to get the published entries for a single journal