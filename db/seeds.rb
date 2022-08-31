# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

User.destroy_all
Article.destroy_all

10.times do |time|
  User.create(email: Faker::Internet.email, password:"AZERTY")
end

30.times do |time|
  Article.create(
      title:Faker::GreekPhilosophers.quote,
      content:Faker::ChuckNorris.fact,
      user: User.find(rand(1..10))
    )
end