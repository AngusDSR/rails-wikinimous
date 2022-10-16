# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

19.times do
  puts '...'
  Article.new(
    title: Faker::Company.catch_phrase,
    content:
    "#{Faker::Lorem.sentences(number: 4).join('')}

    ## #{Faker::Company.buzzword} #{Faker::Company.industry}

    #{Faker::Lorem.paragraphs(number: 3).join(' ')}

    #{Faker::Lorem.paragraphs(number: 3).join(' ')}

    **#{Faker::Lorem.word}** #{Faker::Lorem.paragraphs(number: 3).join(' ')}

    ## #{Faker::Company.catch_phrase}

    #{Faker::Lorem.paragraphs(number: 3).join(' ')} [link]

    #{Faker::Lorem.paragraphs(number: 3).join(' ')}

    #{Faker::Lorem.paragraphs(number: 3).join(' ')}

    #{Faker::Lorem.paragraphs(number: 3).join(' ')}
    "
    # summary: Faker::Lorem.sentences(number: 4).join(''),
    # first_section_title: "#{Faker::Company.buzzword} #{Faker::Company.industry}",
    # first_section_content: Faker::Lorem.paragraphs(number: 3).join(' '),
    # second_section_title: Faker::Company.catch_phrase,
    # second_section_content: Faker::Lorem.paragraphs(number: 4).join(' ')
  ).save
  puts 'Article added'
end
puts '19 Articles added'
puts "\"#{Article.first.title}\" ... \"#{Article.last.title}\""
