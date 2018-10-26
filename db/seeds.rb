# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

5.times do |i|
	cities = City.create!(city_name: Faker::Address.city)
end

5.times do |i|
	doctors = Doctor.create!(city_id: Faker::Number.between(1, 5), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, postal_code: Faker::Number.number(5))
end

5.times do |i|
	patients = Patient.create!(city_id: Faker::Number.between(1, 5), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

5.times do |i|
	specialties = Specialty.create!(specialty_name: Faker::HarryPotter.house)
end

5.times do |i|
	appoitments = Appoitment.create!(city_id: Faker::Number.between(1, 5), doctor_id: Faker::Number.between(1, 5), patient_id: Faker::Number.between(1, 5), date: Faker::Date.forward(23))
end