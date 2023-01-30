puts "🌱 Seeding spices..."

# Seed your database here

Shop.create([
  {
    name: "Chapelure",
    location: "900 Hagadorn Rd",
    id: 1
  },
  {
    name: "Strange Matter Coffee",
    location: "123 Apple Ln",
    id: 2
  },
  {
    name: "Hudson Hill",
    location: "456 Pearl Ave",
    id: 3
  },
  {
    name: "Lab Cafe",
    location: "100 Liberty St",
    id: 4
  }
])

Drink.create([
    {
        name: "Orange Mocha",
        shop_id: 1,
        decaf: false,
        price: 4.50,
        ingredients: "orange syrup, espresso, frothed milk",
    },
    {
      name: "Honey Lavender Latte",
      shop_id: 4,
      decaf: false,
      price: 3.99,
      ingredients: "lavender syrup, espresso, frothed milk, honey",
    }
])

puts "✅ Done seeding!"
