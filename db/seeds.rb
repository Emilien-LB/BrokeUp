# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


require 'faker'

Expense.destroy_all
User.destroy_all

# User
puts "Creating a user..."
user = User.create!(email: "Milou@example.com", password: "secret", user_name: "Milou")
puts "User created: #{user.email}"

# Expenses
puts "Creating expenses..."
expense1 = Expense.create!(
  name: "Salaire",
  expense: false,
  payment: true,
  price: 3500,
  date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31')
)
expense2 = Expense.create!(
  name: "Course",
  expense: true,
  payment: false,
  price: 150,
  date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31')
)

expense3 = Expense.create!(
  name: "Netflix",
  expense: true,
  payment: false,
  price: 10,
  date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31')
)

expense4 = Expense.create!(
  name: "Chaussures",
  expense: true,
  payment: false,
  price: 100,
  date: Faker::Date.between(from: '2022-01-01', to: '2023-12-31')
)

puts "Expense created"
