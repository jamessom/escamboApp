source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'pg', '~> 0.18' # Use postgresql as the database for Active Record
gem 'puma', '~> 3.12' # Use Puma as the app server
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.2' # Use CoffeeScript for .coffee assets and views
gem 'devise', '~> 4.7' # Flexible authentication solution for Rails with Warden
gem 'devise-i18n', '~> 1.2' # Translations for the devise gem
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'rails-i18n', '~> 5.0', '>= 5.0.4' #A set of common locale data and translations to internationalize and/or localize your Rails applications.
gem 'bootstrap_sb_admin_base_v2', '~> 0.3.6' # Rails gem of the Bootstrap based admin theme SB Admin 2. Originally created by Start Bootstrap. You could check the original theme on https://github.com/IronSummitMedia/startbootstrap-sb-admin-2
gem 'rails-assets-bootstrap', '3.3.7', source: 'https://rails-assets.org' #The most popular front-end framework for developing responsive, mobile first projects on the web.

group :development, :test do
  gem 'byebug', platform: :mri # Call 'byebug' anywhere in the code to stop execution and get a debugger console
end

group :development do
  gem 'web-console', '>= 3.3.0' # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.0.5'
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'better_errors', '~> 2.3' #Provides a better error page for Rails and other Rack apps. Includes source code inspection, a live REPL and local/instance variable inspection for all stack frames.
  gem 'binding_of_caller', '~> 0.7.2' # Retrieve the binding of a method's caller. Can also retrieve bindings even further up the stack.
  gem 'debug-extras', '~> 0.3.4' # Provide debug helper methods for ActionController::Base and ActionView::Base.  
  gem 'colorize', '~> 0.8.1' # Extends String class or add a ColorizedString with methods to set text color, background color and text effects.  
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby] # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
