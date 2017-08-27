# Instala as Gems
bundle check || bundle install
#  Cria o banco de dados caso não exista
bundle exec rails db:create
#  Roda migrations se tiver
bundle exec rails db:migrate
# Apaga a pasta temporaria
rm tmp/* -Rf 
#  Roda nosso servidor
bundle exec puma -C config/puma.rb