# kasa

Ember.js + Rails application.

## Installation

You have to install following packages first before starting the project:

- [Ruby on Rails (4.2.5)](http://rubyonrails.org/download/)
- [Ember-cli (1.13.8)](http://www.ember-cli.com/)
- [Postgresql (9.4.5)](http://www.postgresql.org/download/)

Then you can proceed to setup your RoR/Ember stack:

```sh
# Install all RoR gems
bundle install
# Go to Ember directory
cd frontend
# Install Ember packages
npm install; bower install
# Go back up
cd ..
# Populate database for development
rake db:reset
# Run server
rails s
```

# Running

You can access your application on: [http://localhost:3000](http://localhost:3000)

There are currently two users. Username and password is the same:

- salon@topstylesalon.cz
- kadernik@topstylesalon.cz

# JS packages
```
ember install ember-cli-accounting
ember install ember-cli-bootstrap-sassy
ember install ember-cli-flash
ember install ember-font-awesome
ember install ember-cli-mirage
ember install ember-cli-pagination
ember install ember-cli-rails-addon
ember install ember-cli-sass
ember install ember-cli-selectize
ember install ember-i18n
ember install ember-moment
ember install ember-pikaday
ember install ember-simple-auth
ember install liquid-fire
ember install ember-data-filter
ember install ember-cli-eslint
ember install ember-lodash
bower install lodash --save
npm install --save-dev ember-cli-full-calendar
```
