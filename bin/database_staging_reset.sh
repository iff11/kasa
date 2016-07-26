#!/bin/bash

APP='kasa-pudr-com'

heroku run rake db:reset --app=${APP}
