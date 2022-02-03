# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: "abraham@gmail.com", password: "123456")
User.create(email: "jesus@gmail.com", password: "123456")
User.create(email: "jenny@gmail.com", password: "123456")

Category.create(name: "Importante", description: "Esta es la tarea más importante")
Category.create(name: "Poco importante", description: "Esta tarea es la mitad de importante")
Category.create(name: "Sin importancia", description: "Esta tarea no tiene importancia")
