#!/bin/bash

DB='kasa'
SRC_APP='kasa-topstylesalon-cz'
APP='kasa-pudr-com'

heroku pg:copy ${SRC_APP}::PRODUCTION_DATABASE STAGING_DATABASE --app=${APP}
