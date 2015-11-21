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
