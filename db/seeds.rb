# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
20.times do |n|
  Job.create!(
    name: Faker::Company.name,
    website: Faker::Internet.url,
    title: Faker::Job.title,
    description: Faker::Lorem.paragraph(sentence_count: 40),
    location: Faker::Address.city,
    email: Faker::Internet.email,
    user_id: rand(1..2)
  )
end