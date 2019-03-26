# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
Mark.destroy_all
CatFood.destroy_all
Assassin.destroy_all

assassin = Assassin.create(name: "Jules and Vincent", image_url: "http://i2.cdn.turner.com/cnn/dam/assets/140922202605-08-pulp-fiction-story-top.jpg", description: "That is a tasty burger")

assassin.create_cat_food(name: "Friskies", image_url: "https://www.dollargeneral.com/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/d/e/default_00050000015474_cl.jpg", description: "Seafood Sensations")

mark = assassin.marks.create(name: "Frank", image_url: "https://i.pinimg.com/236x/4a/63/10/4a6310b5f4868d394aff9eb81a2a4645--frank-sinatra-mugshot-celebrity-mugshots.jpg", description: "a singer")

mark.create_cat(name: "fluffy", image_url: "https://ichef.bbci.co.uk/images/ic/720x405/p0517py6.jpg", description: "very fluffy")
