# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'ffaker'

cats = %w(the_latest on_the_street red_carpet airport fashion_week vacation working_out festival).map do |cat|
	Category.find_or_create_by(title: cat.gsub('_', ' ').titleize)
end

50.times do  |i|
	inf = Influencer.create(name: Faker::Name.name)
	inf.create_headshot
	3.times do
		l = inf.looks.create(title: Faker::Product.product, body: Faker::Lorem.paragraph, category: cats[rand(cats.size) -1])
		g = l.product_groups.create(name: "The look")
		s = l.product_groups.create(name: "Secondary")
		a = l.product_groups.create(name: "Ancillary")
		5.times do |i|
			g.products << Product.create(brand: Faker::Product.brand, model: Faker::Product.product_name, price_cents: rand(10000))
			s.products << Product.create(brand: Faker::Product.brand, model: Faker::Product.product_name, price_cents: rand(10000))
			a.products << Product.create(brand: Faker::Product.brand, model: Faker::Product.product_name, price_cents: rand(10000))
		end
	end
end
