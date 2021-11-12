# Groceries Store

## Technology stack

- Ruby 2.7
- Ruby on Rails 6.1.4
- PostgreSQL
- Gems:
    -  [active_model_serializers](https://github.com/rails-api/active_model_serializers) | JSON generation
    -  [devise](https://github.com/plataformatec/devise) | Authentication
    -  [pg](https://github.com/ged/ruby-pg) | PostgreSQL library for Ruby
    -  [puma](https://github.com/puma/puma) | Web application server
    -  [simple_token_authentication](https://github.com/gonzalo-bulnes/simple_token_authentication) | Token authentication
    -  [will_paginate](https://github.com/mislav/will_paginate) | For pagination

## Installation

### Requirements

Before you get started, the following needs to be installed:
   **Ruby**. Version 2.7.0 is currently used. If you need multiple versions of Ruby, [RVM](https://rvm.io//) or [rbenv](https://github.com/rbenv/rbenv) is recommended.
  * [**RubyGems**](http://rubygems.org/)
  * **Bundler**: `gem install bundler`
  * [**Git**](http://help.github.com/git-installation-redirect)
  * **A database**. PostgreSQL is currently used. You can install PostgreSQL server using following ways:
    1. If you are on a Mac, use homebrew: `brew install postgresql`.
    2. Install a [PostgreSQL using following](https://www.postgresql.org/download/linux/ubuntu/)

### Setting up the development environment

1.  Get the code. Clone this git repository:

    ```bash
    git clone git@gitlab.com:smalik1/groceries-store.git
    cd groceries-store
    ```

1.  Install the required gems by running the following command in the project root directory:

    ```bash
    bundle install
    ```

    **Note:** [`pg` might fail to build native extension](https://stackoverflow.com/questions/4827092/unable-to-install-pg-gem), in that case you can try installing pg manually:

    ```bash
    sudo apt-get install libpq-dev

    bundle install
    ```

1.  Create a `database.yml` file by copying the example database configuration:

    ```bash
    cp config/example.database.yml config/database.yml
    ```

1.  Add your database configuration details to `config/database.yml`. You will probably need to fill the username and password for the database(s).

1.  Create and initialize the database:

    ```bash
    bundle exec rake db:create db:seed
    ```

1.  Start the development server:

    ```bash
    rails s
    ```

1.  Api Documentation: Api documentation can be found inside the project directory. File name is Groceries Store.postman_collection.json

### How to run the test suite

Specs need to be added as an improvement.


Congratulations! Groceries store should now be up and running for development purposes. Open a browser and go to the server URL (e.g. http://localhost:3000)

