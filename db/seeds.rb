# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |_|
  User.create!(name: Faker::Name.unique.name, email: Faker::Internet.unique.email, age: Faker::Number.number(digits: 2))
end

20.times do |_|
  Article.create!(user: User.all.sample, title: Faker::Lorem.word, contents: Faker::Lorem.sentence)
end
