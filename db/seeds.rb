# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: "Sarah", email: "sarah@test.com", password: "password")
User.create!(name: "Anna", email: "anna@test.com", password: "password")

Supplier.create!({ name: "Core Home Fitness", phone_number: "800-520-1163", email: "info@corehomefitness.com" })
Supplier.create!({ name: "Bowflex", phone_number: "800-605-3369", email: "info@bowflex.com" })

Product.create!({ name: "Adjustable Dumbells", price: 350, description: "Our new Adjustable Dumbbells let you change weights in 5 lb increments with the simple twist of a handle – no knobs to turn or levers to slide. With weights ranging from 5 to 50 lbs, our dumbbell gives you an entire 10-piece set in a single dumbbell – all with a durable construction and a modern, lightweight aluminum cradle. It’s a great way to get a real workout with real results – all from a smart, compact design.", supplier_id: 1 })
Product.create!({ name: "Adjustable Bench", price: 270, description: "Our folding bench press adjusts to 6 different positions- Decline, Flat, 30, 45, 60 and 90 degrees as well as 2 seat positions for incline and flat angles. The adjustable workout bench also has a removable leg bar for decline dumbbell and abdominal training. Pairing the bench with our adjustable dumbbells provides you with the ability to do virtually any at home strength training program.", supplier_id: 1 })
Product.create!({ name: "HIIT Rower", price: 1300, description: "HIIT the rowing machine. Row at a comfortable pace for a three-minute warm up. Set the screen to display calories. At the end of the third minute explode into maximum effort with the aim of burning as many calories as possible in 60 seconds. Ease off for 60 seconds.", supplier_id: 2 })
Product.create!({ name: "Treadmill", price: 2599, description: "Built like a tank, our self powered AirGo Curve Treadmill Elite 2.0 offers an ergonomic design to optimize your running workout. Built with 8 levels of magnetic resistance, the Elite Curve Treadmill is suitable for both strength exercises as well as running exercises. Fit for any commercial or home gym. Our treadmills are designed to last in any setting.", supplier_id: 2 })
Product.create!({ name: "Boxing Bag and Gloves with Sensors", price: 2400, description: "There’s nothing more satisfying than landing a solid punch on the bag… and then another. Before you know it, you’re in the zone.", supplier_id: 1 })

Image.create!({ product_id: 1, url: "https://cdn.shopify.com/s/files/1/0416/6726/4677/products/800x800_18_2000x.png?v=1603778137" })
Image.create({ product_id: 1, url: "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS-p-6whxk1hAo_a15s05Rc6GW6f6Yj1GFLNay9QJ01Tj6GoyOl" })
Image.create!({ product_id: 2, url: "https://images-na.ssl-images-amazon.com/images/I/61fxmpeTVJL._AC_SL1500_.jpg" })
Image.create!({ product_id: 3, url: "https://images-na.ssl-images-amazon.com/images/I/51LKuJeZzxL._AC_SL1242_.jpg" })
Image.create!({ product_id: 4, url: "https://cdn.shopify.com/s/files/1/2094/9815/products/AirGoEliteTreadmill2.0WEB2_grande.jpg?v=1607180658" })
Image.create!({ product_id: 5, url: "https://manofmany.com/wp-content/uploads/2019/01/Fight-Camp-Full-Home-Boxing-Studio-1.jpg" })

Category.create!(name: "Accessories")
Category.create!(name: "Machines")

CategoryProduct.create!(product_id: 1, category_id: 1)
CategoryProduct.create!(product_id: 2, category_id: 2)
CategoryProduct.create!(product_id: 3, category_id: 2)
CategoryProduct.create!(product_id: 4, category_id: 2)
CategoryProduct.create!(product_id: 5, category_id: 1)
