# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Cat.destroy_all
Mark.destroy_all
CatFood.destroy_all
Assassin.destroy_all

assassin1 = Assassin.create(name: "Jules and Vincent", image_url: "http://i2.cdn.turner.com/cnn/dam/assets/140922202605-08-pulp-fiction-story-top.jpg", description: "That is a tasty burger", price: "$30,000")
assassin2 = Assassin.create(name: "John Wick", image_url: "http://exclaim.ca/images/john-wick-chapter-2-poster-big.jpg", description: "That dog was a gift from my wife.", price: "$100,000")
assassin3 = Assassin.create(name: "Deadpool", image_url: "https://thewatchmancomau.files.wordpress.com/2018/05/deadpool-2-wallpaper-4i-e1526796176729.jpg", description: "Something inappropriate", price: "$69.00")
assassin4 = Assassin.create(name: "Crazy Joe", image_url: "https://listverse.com/wp-content/uploads/2012/04/50336_45755462571_4089_n.jpg", description: "You can get much further with a kind word and a gun than you can with just a kind word.", price: "$100,000 (*adjusted for inflation)")
assassin5 = Assassin.create(name: "Luca Brasi", image_url: "https://images.ctfassets.net/23wh7e5ryr18/photo-40262/e11738d29fbf98131f3da205209d48c9/40262-godfather-luca-1.jpg?fm=jpg&fl=progressive&w=900&q=50", description: "The biggest man we've got", price: "$5,000")
assassin7 = Assassin.create(name: "James Bond", image_url: "https://images-i.jpimedia.uk/imagefetch/c_fill,f_auto,h_640,q_auto:eco,w_960/https://inews.co.uk/wp-content/uploads/2017/05/james-bond.jpg", description: "The name is Bond. James bond", price: "$0.07")

assassin1.create_cat_food(name: "Friskies", image_url: "https://www.dollargeneral.com/media/catalog/product/cache/image/700x700/e9c3970ab036de70892d86c6d221abfe/d/e/default_00050000015474_cl.jpg", description: "Seafood Sensations")
assassin2.create_cat_food(name: "Canned Tuna", image_url: "http://static1.squarespace.com/static/596fb734c534a5fa937b7e75/5ab0164003ce6497ede5c48a/5aa9b6cf71c10b19376b5122/1521071850333/FP222_Tuna+Can.jpg", description: "Chicken of the sea.")
assassin3.create_cat_food(name: "Cold Pizza", image_url: "https://www.saintclarefestival.net/wp-content/uploads/2018/05/Google-Reuse-Unknown-Cheese-Pizza-Slice.jpg", description: "Everyone loves it.")
assassin4.create_cat_food(name: "Meow Mix", image_url: "https://images-na.ssl-images-amazon.com/images/I/71YURG2o%2BdL._SX425_.jpg", description: "Meow. Meow. Meow. Meow. Meow. Meow. Meow. Meow. Meow.")
assassin5.create_cat_food(name: "Sashimi", image_url: "https://i.pinimg.com/originals/da/a5/5b/daa55b5a14d5223582aef6cc88c58fd1.jpg", description: "Uncooked salmon.")
assassin7.create_cat_food(name: "Fancy Feast", image_url: "https://pics.drugstore.com/prodimg/93017/900.jpg", description: "For the fancy beast.")

mark = assassin5.marks.create(name: "Frank", image_url: "https://i.pinimg.com/236x/4a/63/10/4a6310b5f4868d394aff9eb81a2a4645--frank-sinatra-mugshot-celebrity-mugshots.jpg", description: "a singer")

mark = assassin5.marks.create(name: "bob", image_url: "https://yt3.ggpht.com/a-/AAuE7mC75lyDOGkH_0L4_ZR6F4bfGviFjsMZIGa22w=s900-mo-c-c0xffffffff-rj-k-no", description: "he paints to good")

mark = assassin5.marks.create(name: "Mr.Rogers", image_url: "https://dwzwq1zlgpr34rpg91aveun6-wpengine.netdna-ssl.com/wp-content/uploads/2018/03/mister_rogers_feature_2_1050x700.jpg", description: "a neighborhood guy")
# mark.create_cat(name: "fluffy", image_url: "https://ichef.bbci.co.uk/images/ic/720x405/p0517py6.jpg", description: "very fluffy")
# mark.save
