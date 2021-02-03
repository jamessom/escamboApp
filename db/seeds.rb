
categories = [
  'Animais e Acessórios',
  'Esportes',
  'Para a sua casa',
  'Eletrônicos e celulares',
  'Música e hobbies',
  'Bebês e crianças',
  'Moda e beleza',
  'Veículos e barcos',
  'Imóvies',
  'Empregos e negócios'
]

default_admin_data = {
  name: "Administrador",
  email: 'admin@admin.com',
  password: '123qwe',
  password_confirmation: '123qwe'
}

puts 'Criando seed de categorias...'
categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts 'Criando default admin'
Admin.find_by_email(default_admin_data[:email]) || Admin.create!(default_admin_data)