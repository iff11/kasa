source 'https://rubygems.org'
ruby "2.2.4"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
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
gem 'jsonapi-resources'
gem 'paranoia', :git => 'https://github.com/radar/paranoia.git', :branch => 'rails4'
gem 'hairtrigger'

gem 'devise'
gem 'cancan'
gem 'pundit', :git => 'https://github.com/elabs/pundit.git', :tag => 'v1.1.0'
gem 'jsonapi-authorization'

gem 'nokogiri'

gem 'pg'

gem 'ruby-eet-cz', git: 'https://github.com/ciihla/ruby-eet-cz', branch: 'master'

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'taps'
  # https://github.com/rails/rails/issues/26658
  gem 'rb-readline'
end

group :development do
  gem 'seed_dump'
  gem 'rails-erd'
  gem "awesome_print", require:"ap"
  gem 'pry-rails'
end

group :production do
  gem 'skylight'
end

gem 'rails_12factor', group: [:staging, :production]
