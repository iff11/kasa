#!/bin/bash

APP='demo-beauty-pay-cz'

heroku run rake db:reset --app=${APP}
