# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Game.create([
  {title: "The Witcher 3", developer: "CD Projekt Red", genre: "RPG", platform: "PC", release_date: "2015-05-19"},
  {title: "Cyberpunk 2077", developer: "CD Projekt Red", genre: "RPG", platform: "PC", release_date: "2020-12-10"},
  {title: "Red Dead Redemption 2", developer: "Rockstar Games", genre: "Action-Adventure", platform: "PlayStation 4", release_date: "2018-10-26"},
  {title: "The Legend of Zelda: Breath of the Wild", developer: "Nintendo", genre: "Action-Adventure", platform: "Nintendo Switch", release_date: "2017-03-03"},
  {title: "God of War", developer: "Santa Monica Studio", genre: "Action-Adventure", platform: "PlayStation 4", release_date: "2018-04-20"}
])