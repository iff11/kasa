#!/bin/bash

DB='kasa'
APP='kasa-topstylesalon-cz'

dropdb $DB
heroku pg:pull DATABASE_URL $DB --app=${APP}
