#!/bin/bash

DB='kasa_development'

dropdb $DB
heroku pg:pull DATABASE_URL $DB

