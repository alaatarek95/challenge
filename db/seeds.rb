# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'bcrypt'
User.create(email: "admin@project.com", password: "admin123456", password_confirmation: "admin123456", full_name: "project admin", role:2, phone: "010000000000")
