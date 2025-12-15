puts "Apagando artigos antigos..."
Article.delete_all

puts "Criando novos artigos..."

10.times do |i|
  Article.create!(
    title: "Artigo de Exemplo #{i + 1}",
    description: "Esta é a descrição simulada para o artigo número #{i + 1}. O texto serve para preencher o layout e testar a paginação e os destaques do seu blog."
  )
end

puts "10 artigos criados com sucesso!"
