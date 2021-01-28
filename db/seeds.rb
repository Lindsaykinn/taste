# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.create([
  {title: "Guacamole", instructions: "In a large bowl place the scooped avocado pulp and lime juice, toss to coat. Drain, and reserve the lime juice, after all of the avocados have been coated. Using a potato masher add the salt, cumin, and cayenne and mash. Then, fold in the onions, tomatoes, cilantro, and garlic. Add 1 tablespoon of the reserved lime juice. Let sit at room temperature for 1 hour and then serve.", rating:5},

  {title: "Spicy Chili Garlic Noodles", instructions: "Cook noodles according to package instructions. Drain. In a large skillet over medium-high heat, heat oil. Add shallots and season with salt. Cook until golden and crispy, about 5 minutes. Transfer shallots to a paper towel-lined plate. Add sesame oil to skillet. When sesame oil is fragrant, stir in green onions and garlic and cook for one minute. Add soy sauce, chili garlic sauce, lime juice, brown sugar, and red pepper flakes (if using). Simmer until sauce has reduced slightly, 3 to 5 minutes. Add cooked noodles and toss to combine. Garnish with crispy shallots and more green onions. Serve immediately.", rating:5},

  {title: "Mediterranean Orzo Spinach Salad", instructions: "Boil a medium pot of water and cook orzo according to package. Reserve ¼ cup pasta water. Drain and rinse orzo with cold water. Pour into a medium sized bowl. Add pasta water, olive oil, red wine vinegar, oregano, salt and pepper. Stir to evenly coat orzo. Add red onion, olives, tomatoes, and feta. Stir to combine. Right before serving, chop ⅔ cups of spinach per person. Place spinach in the bottom of a bowl. Top with orzo mixture. To serve, add some extra feta cheese and fresh organo for garnish.", rating:4}
  
])

Category.create([
  {name: "Main"},
  {name: "Appetizer"},
  {name: "Dessert"},
  {name: "Salad"},
  {name: "Side"},
  {name: "Vegetarian"},
  {name: "Healthy"},
])