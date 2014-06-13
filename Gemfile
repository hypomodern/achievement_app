source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 4.1.0'

# Use SASS for stylesheets
gem 'sass-rails', '~> 4.0.3'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# Use jquery as the JavaScript library
gem 'jquery-rails'

gem 'bootstrap-sass', '>= 3.0.0.0'
gem 'devise'
gem 'figaro', github: 'laserlemon/figaro'
gem 'slim'
gem 'unicorn'
gem 'responders'
gem 'simple_builder'

# database stuff
gem 'pg'
gem 'annotate'
gem 'seed_dump'

# uploads stuff
gem 'carrierwave_direct'

group :development do
  gem 'foreman'
  gem 'vendorer'
  gem 'better_errors'
  gem 'binding_of_caller', platforms: [:mri_19, :mri_20, :rbx]
  gem 'guard-bundler'
  gem 'guard-rspec'
  gem 'haml-rails'
  gem 'haml2slim'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'spring'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
end

group :development, :test do
  gem 'fabrication'
  gem 'rspec-rails'
  gem 'pry'
  gem 'pry-debugger'
  gem 'pry-rails'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end

# Heroku
gem 'rails_12factor', group: :production
ruby "2.0.0"

