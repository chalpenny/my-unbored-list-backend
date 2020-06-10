# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Activity.delete_all



restaurants = Category.create(name: "Restaurants")
movies = Category.create(name: "Movies")
tv_shows = Category.create(name: "TV Shows")
places = Category.create(name: "Places to Go")


grandcanyon = Activity.create(name: "Grand Canyon", url: "https://www.nps.gov/grca/planyourvisit/index.htm", status: false, category_id: places.id)
paseo = Activity.create(name: "Paseo", url: "https://www.paseorestaurants.com/", status: false, category_id: restaurants.id)
