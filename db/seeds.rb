# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'ffaker'

200.times.map { |i|
	Influencer.create(name: Faker::Name.name)
}.each { |inf|
	3.times do
		inf.looks.create(title: Faker::Product.product, body: Faker::Lorem.paragraph)
	end
}