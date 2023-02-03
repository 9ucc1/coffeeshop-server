puts "🌱 Seeding coffees and shops..."

# Seed your database here

Shop.create([
  {
    name: "Chapelure",
    location: "900 Hagadorn Rd",
    id: 1,
    description: "breadcrumbs"
  },
  {
    name: "Strange Matter Coffee",
    location: "123 Apple Ln",
    id: 2,
    description: "og"
  },
  {
    name: "Hudson Hill",
    location: "456 Pearl Ave",
    id: 3,
    description: "bougie"
  },
  {
    name: "Lab Cafe",
    location: "100 Liberty St",
    id: 4,
    description: "college town"
  },
  {
    name: "Roos Roast",
    location: "123 st",
    id: 5,
    description: "we roast our own beans"
  }
])

Drink.create([
  {
    name: "Orange Mocha",
    shop_id: 1,
    decaf: false,
    price: 4.50,
    ingredients: "orange syrup, espresso, frothed milk",
    description: "An interesting combination of flavors idk"
  },
  {
    name: "Chai Latte",
    shop_id: 1,
    decaf: false,
    price: 4.50,
    ingredients: "black tea, spices, hot water, frothed milk, honey",
    description: "a classic choice that isn't coffee"
  },
  {
    name: "Hot Chocolate",
    shop_id: 1,
    decaf: true,
    price: 4.50,
    ingredients: "orange syrup, espresso, frothed milk",
    description: "cozy up with a hot chocolate"
  },
  {
    name: "NOLA Iced Coffee",
    shop_id: 2,
    decaf: false,
    price: 5.00,
    ingredients: "cold brew, chicory root, milk, simple syrup",
    description: "Our most popular iced drink! Cold brew concentrate steeped with chicory root, combined with milk, and house-made simple syrup! Sweet, creamy, and full of caffeine."
  },
  {
    name: "Brown Sugar Cardamom Latte",
    shop_id: 2,
    decaf: false,
    price: 5.00,
    ingredients: "espresso, brown sugar, cardamom, frothed milk",
    description: "hmmm"
  },
  {
    name: "Espresso Cola",
    shop_id: 2,
    decaf: false,
    price: 5.50,
    ingredients: "coca-cola, espresso",
    description: "Mexican Coke + a chilled and shaken double shot of espresso. All the caffeine. All of the sugar."
  },
  {
    name: "Affogato",
    shop_id: 4,
    decaf: false,
    price: 7,
    ingredients: "espresso shot, vanilla bean ice cream",
    description: "a tasty treat"
  },
  {
    name: "Honey Lavender Latte",
    shop_id: 4,
    decaf: false,
    price: 3.99,
    ingredients: "lavender syrup, espresso, frothed milk, honey",
    description: "a floral something"
  },
])

puts "✅ Done seeding!"
