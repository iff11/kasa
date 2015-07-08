source 'https://rubygems.org'

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
gem 'active_model_serializers', '~> 0.10.0.rc2'
gem 'paranoia', :git => 'https://github.com/radar/paranoia.git', :branch => 'rails4'

gem 'devise'
gem 'cancan'

gem 'nokogiri'

gem 'pg'

gem 'newrelic_rpm'

group :development, :test do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rails-erd'

  gem 'taps'
end

group :production do
  gem 'rails_12factor'
  gem 'skylight'
end
