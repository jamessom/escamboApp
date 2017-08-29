# Instala as Gems
bundle check || bundle install
#  Cria o banco de dados caso não exista
bundle exec rails db:create
#  Roda migrations
bundle exec rails db:migrate
#  Roda seeds
bundle exec rails db:seed
# Apaga a pasta temporaria
rm tmp/* -Rf 
#  Roda nosso servidor
bundle exec puma -C config/puma.rb