# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
listOf = open(url).read
drinks = JSON.parse(listOf)

drinks['drinks'].each do |element|
  Ingredient.create(name: element['strIngredient1'])
end

Cocktail.create(name: "Martini", image_url: "https://res.cloudinary.com/peterfoo22/image/upload/v1571990001/t57zsbp7zzxtis8yijyj.jpg")
Cocktail.create(name: "White Wine Spritzer", image_url: "https://res.cloudinary.com/peterfoo22/image/upload/v1571990001/t57zsbp7zzxtis8yijyj.jpg")
Cocktail.create(name: "Mojito", image_url: "https://res.cloudinary.com/peterfoo22/image/upload/v1571989695/joqxgx6srmxxuqnucldj.jpg")
