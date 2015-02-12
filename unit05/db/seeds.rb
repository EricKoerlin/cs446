# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Store.create(name: 'Best Buy', city: 'Lakewood').computers.create([
# {brand: 'HP', price: 1000.00, screen_size: 15, cpu: 4},
# {brand: 'Apple', price: 1000000.00, screen_size: 13, cpu: 1},
# {brand: 'HP', price: 795.90, screen_size: 14, cpu: 2},
# {brand: 'Asus', price: 899.99, screen_size: 16, cpu: 2} ])

Store.create(name:'PC-City', city:'Westminster').computers.create(brand: 'Lenovo', price: 750.95, screen_size: 15, cpu: 4)