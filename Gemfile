source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby "2.5.3"

gem "autoprefixer-rails"
gem "honeybadger"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 5.2.0"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "skylight"
gem "sprockets", ">= 3.0.0"
gem "title"
gem "tzinfo-data", platforms: [:mingw, :x64_mingw, :mswin, :jruby]
gem "uglifier"
gem "bootsnap", require: false
gem "httparty"
gem "trailblazer"
gem "trailblazer-rails" # if you are in rails.
gem "trailblazer-cells"
gem 'reform'
gem 'reform-rails'
gem 'dry-validation'
gem 'devise'
gem 'slim'
gem 'devise_invitable', '~> 2.0.1'


group :development do
  gem "listen"
  gem "rack-mini-profiler", require: false
  gem "spring"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "dotenv-rails"
  gem "pry-byebug"
  gem "pry-rails"
end

group :test do
  gem "formulaic"
  gem "launchy"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
  gem "vcr"
end

gem "suspenders", group: [:development, :test]

gem 'oj'
gem 'high_voltage'
gem 'bourbon', '~> 5.0'
gem 'neat', '~> 2.1'
gem 'spring-commands-rspec', group: :development
gem 'rspec-rails', '~> 3.6', group: [:development, :test]
gem 'shoulda-matchers', group: :test
gem 'capybara-selenium', group: :test
gem 'chromedriver-helper', group: :test
gem 'simple_form'
gem 'bullet', group: [:development, :test]
gem 'factory_bot_rails', group: [:development, :test]
gem 'delayed_job_active_record'
gem 'rack-timeout', group: :production
