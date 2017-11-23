require 'open-uri'
require 'json'

url = "http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
data_serialized = open(url).read
data = JSON.parse(data_serialized)
ingredients = data["drinks"]

i = 1

puts "destroy all ingrdients"
Ingredient.delete_all

p ingredients

puts "adding new ingredients"
ingredients.each do |e|
  puts "adding #{e["strIngredient1"]}"
  Ingredient.create(name: e["strIngredient1"])
  puts "created ingredient #{i}"
  i += 1
end

puts "all ingrdients added"
