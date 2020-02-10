# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#User Seeds

nick = User.create(first_name: "Nick", last_name: "Moore", email: "nick@yahoo.com", password: "password")

chris = User.create(first_name: "Chris", last_name: "Moore", email: "chris@yahoo.com", password: "password")

matt = User.create(first_name: "Matt", last_name: "Moore", email: "matt@yahoo.com", password: "password")

#Bottle Seeds

bottle_1 = Bottle.create(bottle_name: "Nick's Bourbon Bottle", bottle_type: "Bourbon", bottle_img_url: "bottle_example.jpg", bottle_volume: 750, user: nick)

bottle_2 = Bottle.create(bottle_name: "Nick's Gin Bottle", bottle_type: "Gin", bottle_img_url: "bottle_example.jpg", bottle_volume: 750, user: nick)

bottle_3 = Bottle.create(bottle_name: "Matt's Vodka Bottle", bottle_type: "Vodka", bottle_img_url: "bottle_example.jpg", bottle_volume: 750, user: matt)

bottle_4 = Bottle.create(bottle_name: "Chris's Scotch Bottle", bottle_type: "Scotch", bottle_img_url: "bottle_example.jpg", bottle_volume: 750, user: chris)




#Pour Seeds

pour_1 = Pour.create(pour_name: "Angel's Envy Pour", pour_img_url: "pour_example.jpg", pour_volume: 25, pour_price_per_bottle: 52.99, pour_bottle_volume: 750, bottle: bottle_1)

pour_2 = Pour.create(pour_name: "Bulleit Pour", pour_img_url: "pour_example.jpg", pour_volume: 150, pour_price_per_bottle: 33.98, pour_bottle_volume: 750, bottle: bottle_1)

pour_3 = Pour.create(pour_name: "Maker's Mark Pour", pour_img_url: "pour_example.jpg", pour_volume: 300, pour_price_per_bottle: 27.99, pour_bottle_volume: 750, bottle: bottle_1)

pour_4 = Pour.create(pour_name: "Blanton's Pour", pour_img_url: "pour_example.jpg", pour_volume: 40, pour_price_per_bottle: 72.99, pour_bottle_volume: 750, bottle: bottle_1)

pour_5 = Pour.create(pour_name: "Tasting During Card Night", pour_img_url: "pour_example.jpg", pour_volume: -50, pour_price_per_bottle: nil, pour_bottle_volume: nil, bottle: bottle_1)



pour_6 = Pour.create(pour_name: "Seagram's Extra Dry Pour", pour_img_url: "pour_example.jpg", pour_volume: 500, pour_price_per_bottle: 10.99, pour_bottle_volume: 750, bottle: bottle_2)

pour_7 = Pour.create(pour_name: "Hendrick's Pour", pour_img_url: "pour_example.jpg", pour_volume: 150, pour_price_per_bottle: 34.99, pour_bottle_volume: 750, bottle: bottle_2)

pour_8 = Pour.create(pour_name: "The Botanist Pour", pour_img_url: "pour_example.jpg", pour_volume: 40, pour_price_per_bottle: 36.00, pour_bottle_volume: 750, bottle: bottle_2)

pour_9 = Pour.create(pour_name: "Ugly Dog", pour_img_url: "pour_example.jpg", pour_volume: 400, pour_price_per_bottle: 16.00, pour_bottle_volume: 750, bottle: bottle_3)


pour_10 = Pour.create(pour_name: "Laphroaig Pour", pour_img_url: "pour_example.jpg", pour_volume: 200, pour_price_per_bottle: 72.00, pour_bottle_volume: 750, bottle: bottle_4)

pour_11 = Pour.create(pour_name: "Johnny Walker Blue Pour", pour_img_url: "pour_example.jpg", pour_volume: 10, pour_price_per_bottle: 165.00, pour_bottle_volume: 750, bottle: bottle_4)

pour_12 = Pour.create(pour_name: "White Walker Pour", pour_img_url: "pour_example.jpg", pour_volume: 400, pour_price_per_bottle: 29.00, pour_bottle_volume: 750, bottle: bottle_4)
