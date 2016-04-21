# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.create(name: "seed generated product", description: "I also created this product without using the HTML form!", image_url: "https://images.unsplash.com/photo-1460400355256-e87506dcec4f")

Product.create(name: "second seed generated product", description: "I also created this product without using the HTML form!", image_url: "https://images.unsplash.com/photo-1437326516294-01d0da392e11")