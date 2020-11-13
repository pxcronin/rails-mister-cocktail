# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

# Ingredient.delete_all

# data = URI.open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
# hash = JSON.parse(data)
# hash["drinks"].each do |h|
#   Ingredient.create!(name: h["strIngredient1"])
# end

Ingredient.create!(name: 'Campari')
Ingredient.create!(name: 'Simple syrup')
Ingredient.create!(name: 'Angostura Bitters')
Ingredient.create!(name: 'Lemon twist')
Ingredient.create!(name: 'Orange twist')
