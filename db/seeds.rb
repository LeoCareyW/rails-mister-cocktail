# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)
# puts "creating cocktails..."

# mojito = { name: 'Mojito' }
# old_fashioned = { name: 'Old Fashioned' }
# pina_colada = {name: "Pina Colada"}
# martini = {name: "Martini"}

# [mojito, old_fashioned, pina_colada, martini].each do |attr|
#   cocktail = Cocktail.create!(attr)
#   puts "Created #{cocktail.name}"
# end


#   ingredients.each do |attr|
#     ingredient = Ingredient.create!(attr)
#     puts "Created #{ingredient.name}"
#   end
# '



# puts "Completed"

# require 'open-uri'
# require 'json

  response = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")
  json = JSON.parse(response.read)
  drinks = json['drinks']
  drinks.each do |drink|
    ingredient_name = drink['strIngredient1']
    Ingredient.create!(name: ingredient_name)
  end
