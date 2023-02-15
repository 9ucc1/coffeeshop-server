puts "🌱 Seeding coffees and shops..."

# Seed your database here

Shop.create([
  {
    name: "Chapelure",
    location: "4750 Hagadorn Road Suite 10, East Lansing, MI 48823",
    id: 1,
    description: "Chapelure works hard to provide the Greater Lansing area with freshly baked cakes and pastries, as well as a wide variety of coffee and tea drinks.",
    image: "https://images.squarespace-cdn.com/content/v1/5cdb201aa9ab954590e37790/1557864658637-DM3JMD6SEADM1DB8DBFU/chapLOGO.png?format=1500w"
  },
  {
    name: "Strange Matter Coffee",
    location: "2010 E Michigan Ave #103, Lansing, MI 48912",
    id: 2,
    description: "A multi-roaster pour-over and espresso bar. Providing the finest coffees through our commitment to knowledge, skill, and service.",
    image: "https://ksr-ugc.imgix.net/assets/000/952/514/20b597bea61d4b39c7886c78dee9c086_original.jpg?ixlib=rb-2.1.0&w=680&fit=max&v=1380058010&auto=format&gif-q=50&q=92&s=38a728ca0b04d5b9c00063c2d592f5bf"
  },
  {
    name: "Hudson Hill",
    location: "619 E 13th Ave, Denver, Colorado 80203",
    id: 3,
    description: "The finest coffee, cocktails, wine, beer and spirits in Denver's Capitol Hill neighborhood.",
    image: "https://tse1.mm.bing.net/th?id=OIP.UOm_5suLHcQ3EUjJsKHPagAAAA&pid=Api"
  },
  {
    name: "Roos Roast",
    location: "117 E Liberty St, Ann Arbor, MI 48104",
    id: 4,
    description: "Home of Lobster Butter Love, breakfast food, and the best coffee in Ann Arbor. We roast daily on Michigan's first eco-roaster and we handprint our coffee bags, like maniacs.",
    image: "https://cdn.shopify.com/s/files/1/1461/7372/files/Round_logo_blue_coffee-01_360x.png?v=1603375215"
  }
])

Drink.create([
  {
    name: "Orange Mocha",
    shop_id: 1,
    decaf: false,
    price: 4.50,
    ingredients: "orange syrup, espresso, frothed milk, orange zest, whipped cream",
    description: "An flavorful combination of zesty orange and rich chocolate, reminiscent of the holidays.",
    image: "https://www.cakenknife.com/wp-content/uploads/2016/12/Hot-Orange-Mocha-Cocktail-Photo.jpg"
  },
  {
    name: "Chai Latte",
    shop_id: 1,
    decaf: false,
    price: 4.50,
    ingredients: "black tea, spices, hot water, frothed milk, honey",
    description: "This chai latte is the perfect mug of fresh brewed black tea, warming spices, a hint of sweetness, and extra frothy milk.",
    image: "https://blog.tableandvine.com/wp-content/uploads/2020/11/SpicedChaiLatte.jpg"
  },
  {
    name: "Hot Chocolate",
    shop_id: 1,
    decaf: true,
    price: 4.50,
    ingredients: "frothed milk, cocoa powder",
    description: "A classic cold weather drink, perfect for a snowy night in.",
    image: "http://nourishedkitchen.com/wp-content/uploads/2016/12/IMG_2182.jpg"
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
