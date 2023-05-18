# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.destroy_all

100.times do |index|
  User.find_or_create_by(
    name:       "name1 #{index}",
    email:      Faker::Internet.email,
    start_date: Faker::Time.between(from: 2.month.ago, to: 1.day.ago),
    end_date: Faker::Time.between(from: 1.month.from_now, to: 3.months.from_now),
    active: rand(2)
  )
end