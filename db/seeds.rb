
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
  password_confirmation: '123qwe',
  role: 0
}

fake_pass = Faker::Alphanumeric.alphanumeric(number: 10, min_alpha: 3)

puts 'Criando seed de categorias...'
categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts 'Criando default admin'
Admin.find_by_email(default_admin_data[:email]) || Admin.create!(default_admin_data)

puts "Criando fake admins"
10.times do
  admins = {
    name: Faker::Movies::BackToTheFuture.character,
    email: Faker::Internet.email,
    password: fake_pass,
    password_confirmation: fake_pass,
    role: [0,1].sample
  }

  Admin.find_by_email(admins[:email]) || Admin.create!(admins)
end if Admin.count <= 10