source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.5'

# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# gem pg
gem 'pg', '~> 0.18.4'

#gem bootstrap
gem 'bootstrap-sass', '~> 3.3.7'
# gem 'bootstrap', '~> 4.0'
gem 'bootstrap_jt', '~> 0.1.0'

gem 'uswds-rails', github: '18F/uswds-rails-gem'

# use in rails console
gem 'pry-rails'

gem 'simple_form'

gem 'jquery-ui-rails'
# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

#Testing
gem 'selenium-webdriver', '~> 2.53', '>= 2.53.4'
gem 'capybara', '~> 2.7', '>= 2.7.1'

#react gem
gem 'react-rails'
gem 'lodash-rails'


#start server
gem "foreman"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.7'
  gem 'rails-controller-testing'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
    gem 'database_cleaner'
    gem 'capybara', '~> 2.7', '>= 2.7.1'
 end

 # group :assets do
   # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
   gem 'sass-rails', '~> 5.0'
   # Use CoffeeScript for .coffee assets and views
   gem 'coffee-rails', '~> 4.2'
   # Use Uglifier as compressor for JavaScript assets
   gem 'uglifier', '>= 1.3.0'
 # end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'mini_racer', platforms: :ruby
# gem 'webpacker_lite'

gem 'webpacker', '~> 3.5'
gem 'simplecov', require: false, group: :test

gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'actionmailer', '~> 5.0', '>= 5.0.0.1'
