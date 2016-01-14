source 'https://rubygems.org'
ruby "2.3.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.0.0.beta1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
# gem 'jquery-rails'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
gem 'unicorn'

gem 'ember-cli-rails'
# gem 'jsonapi-resources'
gem 'jsonapi-resources', :git => 'https://github.com/rorkjop/jsonapi-resources', :branch => 'rails-5-compatibility'


gem 'devise', :git => 'https://github.com/plataformatec/devise', :branch => 'master'
gem 'cancan'

gem 'nokogiri'

gem 'pg'

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rails-erd'

  gem 'taps'
end

group :production do
  gem 'skylight'
end

gem 'rails_12factor', group: [:staging, :production]
