# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

Dog.destroy_all
Dogsitter.destroy_all
Stroll.destroy_all
City.destroy_all
JoinDogStroll.destroy_all

puts "tout a été détruit"

4.times do 
	City.create!(city_name: Faker::Address.city)
end	
puts "4 villes créées"

40.times do 
	Dog.create!(name: Faker::DcComics.hero, city_id: City.all.sample.id)
end	
puts "40 chiens créés"

20.times do
	Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: City.all.sample.id)
end
puts "20 dogsitters crées"

50.times do
	Stroll.create(date:Faker::Date.in_date_period, dogsitter_id:Dogsitter.all.sample.id)
end
puts "50 strolls créées"

100.times do
	stroll = Stroll.all.sample
	JoinDogStroll.create(stroll_id: stroll.id, dog_id: Dog.where(city_id: Dogsitter.find(stroll.dogsitter_id).city_id).sample.id)
end #permet de matcher la même ville entre les chiens et les dogsitters
puts "groupes de promenades créées"