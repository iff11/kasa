#!/bin/bash

DB='kasa'

dropdb $DB
heroku pg:pull DATABASE_URL $DB
