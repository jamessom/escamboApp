puts "Criando seed de categorias..."

categories = [
  "Animais e Acessórios",
  "Esportes",
  "Para a sua casa",
  "Eletrônicos e celulares",
  "Música e hobbies",
  "Bebês e crianças",
  "Moda e beleza",
  "Veículos e barcos",
  "Imóvies",
  "Empregos e negócios"
]

categories.each do |category|
  Category.find_or_create_by(description: category)
end

puts "Seed de categorias executado com sucesso"