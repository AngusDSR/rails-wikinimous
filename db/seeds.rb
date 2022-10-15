# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

100.times do
  Article.new(
    title: Faker::Quote.famous_last_words,
    author: Faker::FunnyName.two_word_name,
    content: Faker::Lorem.paragraph(sentence_count: 14),
    views: rand(1..1111)
  ).save
end
