source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.0'  ###  for heroku !!!
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

#####  Greg's gems
### gem 'haml', '~> 3.1', '>= 3.1.3' causes local server issues


gem 'formtastic', '~> 3.1', '>= 3.1.4'   ### then run:   rails generate formtastic:install

gem 'will_paginate', '~> 3.0.pre2'

gem 'devise',           '~> 4.2'
gem 'devise_invitable', '~> 1.7.0'   #### then run:    rails generate devise_invitable:install
                                    ### then run:    rails generate devise_invitable MODEL (MODEL = user)

gem 'warden', '~> 1.2', '>= 1.2.6'

gem 'inherited_resources', '~> 1.8.0'

gem 'simple_form'  ### then run:   rails generate simple_form:install

gem 'sanitize', '~> 4.0', '>= 4.0.1'  # white list input

gem 'delayed_job', '~> 4.1', '>= 4.1.2'    ### then run: rails generate delayed_job:active_record

gem 'activerecord-session_store'

##### end Greg's Gems

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'rspec-rails', '~> 3.0'
  gem 'rails-controller-testing'
  gem 'shoulda'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Greg's gems
  gem "capistrano", "~> 3.11", require: false
  #end Greg
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
