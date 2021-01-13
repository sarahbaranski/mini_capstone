# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

product = Product.create({ name: "Adjustable Dumbells", price: 350, image_url: "https://cdn.shopify.com/s/files/1/0416/6726/4677/products/800x800_18_2000x.png?v=1603778137" description: "Our new Adjustable Dumbbells let you change weights in 5 lb increments with the simple twist of a handle – no knobs to turn or levers to slide. With weights ranging from 5 to 50 lbs, our dumbbell gives you an entire 10-piece set in a single dumbbell – all with a durable construction and a modern, lightweight aluminum cradle. It’s a great way to get a real workout with real results – all from a smart, compact design."})
product.save

product = Product.new(name: "Adjustable Bench", price: 270, image_url: "https://images-na.ssl-images-amazon.com/images/I/61fxmpeTVJL._AC_SL1500_.jpg" description:"Our folding bench press adjusts to 6 different positions- Decline, Flat, 30, 45, 60 and 90 degrees as well as 2 seat positions for incline and flat angles. The adjustable workout bench also has a removable leg bar for decline dumbbell and abdominal training. Pairing the bench with our adjustable dumbbells provides you with the ability to do virtually any at home strength training program.")
product.save

product = Product.new(name: "HIIT Rower" price: 1300, image_url: "https://lh3.googleusercontent.com/proxy/K3B1bMCivgjEn4ImvCk2M1rpAGsuqWbxevaonyEE6p6yxADHsrFp42Wy2n51iK5mjlTTsajEYM4rbKoTXzWPOBP77ce4gYfQNrxQ9CiphY3yr8rH1kiSPB-ghM9uOM1mzXYPlLSnP7QJzEYH6d_Kggt0NQ4YX5o" description: "The new StairMaster HIIT Rower makes great HIIT workouts even more effective. Track your workout with detailed metrics, follow one of the built in workout programs, and connect your phone via Bluetooth to save and share your workout. The home gym rowing machine also comes equipped with ANT+ giving you the ability to pair with heart rate trackers and connect to group displays. The HIIT Console now comes standard on StairMaster HIIT products.")
