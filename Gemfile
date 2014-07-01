source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.1'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.3'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer',  platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
# gem 'sdoc', '~> 0.4.0',          group: :doc

##### GRAPE 
gem 'grape', '~> 0.7.0'
gem 'grape-entity'
gem 'grape-kaminari', '~> 0.1.5'
# gem 'grape-swagger', github: 'swistaczek/grape-swagger'
# gem 'grape-swagger-rails', github: 'swistaczek/grape-swagger-rails'
gem 'grape-swagger', '~> 0.7.2'
# gem 'grape-swagger-rails', '~> 0.0.8'
gem 'grape-swagger-rails', github: 'monterail/grape-swagger-rails'

gem 'request_exception_handler'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use debugger
# gem 'debugger', group: [:development, :test]

group :development do
  gem 'thin'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # gem 'better_errors'
  # gem 'binding_of_caller', :platforms=>[:mri_19, :mri_20, :mri_21, :rbx]
  # gem 'quiet_assets'
  gem "letter_opener"
  gem 'capistrano', '~> 3.0.1'
  gem "capistrano-rails", "~> 1.1.0"
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rvm'
  gem 'irbtools', require: 'binding.repl'
end

group :development, :test do
  gem 'rspec-rails'
  # gem 'meta_request'
end

group :test do
  gem 'capybara', '~> 2.2.1'
  gem 'capybara-webkit'
  gem 'poltergeist', '~> 1.5.0'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
  gem "simplecov", "~> 0.8.2"
  # gem 'webmock', '~> 1.17.4'
  # gem 'rr', '~> 1.1.2' # mocking and stubbing objects
end
