#!/bin/bash

DB='kasa'
APP='production-beauty-pay-cz'

dropdb $DB
heroku pg:pull DATABASE_URL $DB --app=${APP}
