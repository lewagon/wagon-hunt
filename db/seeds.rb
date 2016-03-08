# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all

Product.create!(name: "Kudoz", url: "http://getkudoz.com", tagline: "Tinder for job search", category: "tech")
Product.create!(name: "uSlide", url: "http://uslide.io", tagline: "Youtube sucks for education", category: "education")
Product.create!(name: "Medpics", url: "http://medpics.com", tagline: "Share your diagnostics", category: "tech")
Product.create!(name: "Le Wagon", url: "http://lewagon.com", tagline: "We bring tech skills to creative people", category: "education")
