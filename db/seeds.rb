# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create([{ first_name: 'Harry', last_name: 'Potter', email: 'thechosenone@gmail.com', password: 'Ginny'}])
Category.create([{ name: 'Main', user_id: 1}])
Recipe.create([ {title: "Mediterranean Orzo Spinach Salad", instructions: "Boil a medium pot of water and cook orzo according to package. Reserve ¼ cup pasta water. Drain and rinse orzo with cold water. Pour into a medium sized bowl. Add pasta water, olive oil, red wine vinegar, oregano, salt and pepper. Stir to evenly coat orzo. Add red onion, olives, tomatoes, and feta. Stir to combine. Right before serving, chop ⅔ cups of spinach per person. Place spinach in the bottom of a bowl. Top with orzo mixture. To serve, add some extra feta cheese and fresh organo for garnish.", rating:4, ingredient: "orzo", description:"a light side", user_id:1, category_id:1}])

