# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "lf2foce@gmail.com", password: "123456", role: "admin")
User.create(email: "a@a.a", password: "123456", role: "manager")
User.create(email: "b@b.b", password: "123456", role: "sale")