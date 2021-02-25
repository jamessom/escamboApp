Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths << Rails.root.join('node_modules')

Rails.application.config.assets.precompile += %w( site.js backoffice.js )
Rails.application.config.assets.precompile += %w( site.css backoffice.css )
