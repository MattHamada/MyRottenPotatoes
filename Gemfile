source 'https://rubygems.org'

gem 'rails', '3.2.8'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

gem 'omniauth-github'
gem 'omniauth-twitter'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

#############
#CS169 additions
#use Haml for templates
gem 'haml'
#use ruby debugger
group :development, :test do
  gem 'ruby-debug19'
end

#for cucumber BDD
group :development, :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels' #premade stepdefs
  gem 'database_cleaner' #reset cucumber db after tests
  gem 'capybara'
  gem 'launchy' #debug tool for user stories
end
#############

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
