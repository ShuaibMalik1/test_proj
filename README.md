# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

1.  Get the code. Clone this git repository and check out the latest release:

    ```bash
    git clone git://github.com/sharetribe/sharetribe.git
    cd test_proj
    ```

1.  Install the required gems by running the following command in the project root directory:

    ```bash
    bundle install
    ```

1.  Create a `database.yml` file by running the following command for database configuration:

    ```bash
    nano config/database.yml
    ```

1.  Add your database configuration details to `config/database.yml`. You will probably only need to fill in the password for the database(s).

1.  Create and initialize the database:

    ```bash
    bundle exec rake db:create db:migrare
    
    bundle exec rake custom:import_articles
    ```


1.  Start the development server:

    ```bash
    rails s
    ```

1.  Invoke the delayed job worker in a new console (open the project root folder):

    ```bash
    bundle exec rake jobs:work



Api Documentation :- 

1. Fetch all articles[Get]
	http:3000/api/v1/articles

1. Fetch all products[Get]
	http:3000/api/v1/products

1. Fetch all products[POST]
	http:3000/api/v1/products

	Body parameter name
		file => csv file

    