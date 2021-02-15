source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.12'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'devise', '~> 4.7'
gem 'devise-i18n', '~> 1.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'rails-i18n', '~> 5.0', '>= 5.0.4'
gem 'bootstrap_sb_admin_base_v2', '~> 0.3.6'
gem 'rack-attack', '~> 6.4'

source 'https://rails-assets.org' do
  gem 'rails-assets-bootstrap', '3.3.7'
  gem 'rails-assets-notifyjs'
  gem 'rails-assets-bootbox'
end

group :development, :test do
  gem 'faker'
  gem 'byebug', platform: :mri
  gem 'minitest-reporters', '~> 1.4', '>= 1.4.3'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors', '~> 2.3'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'debug-extras', '~> 0.3.4'
  gem 'colorize', '~> 0.8.1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
