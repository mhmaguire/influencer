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

100.times.map { |i|
	Influencer.create(name: Faker::Name.name)
}.each { |inf|
	inf.create_headshot
	5.times do
		l = inf.looks.create(title: Faker::Product.product, body: Faker::Lorem.paragraph, category: cats[rand(cats.size) -1])
	end
}

100.times do |i|
	Product.create(brand: Faker::Product.brand, model: Faker::Product.product_name, price_cents: rand(10000))

end

