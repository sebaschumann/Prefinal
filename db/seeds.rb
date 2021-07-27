# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do
Sujeto.create([{
first_name: Faker::Name.name,
last_name: Faker::Name.name,
document_number: Faker::Number.between(from: 20000000.0, to: 60000000.0),
birthday: Faker::Date.between(from: '1999-09-23', to: '2014-09-25')

  }])
end
