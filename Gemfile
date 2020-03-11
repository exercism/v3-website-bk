source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Core dependencies
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
gem 'mysql2', '~> 0.5.2'
gem 'puma', '~> 4.1'
gem 'redis', '~> 4.0'

# Setup dependencies
gem 'bootsnap', '>= 1.4.2', require: false

# Model-level dependencies
gem 'image_processing', '~> 1.2'
gem 'delayed_job_active_record', '~> 4.1.4'

# View-level Dependencies
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem "haml-rails", "~> 2.0"

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
