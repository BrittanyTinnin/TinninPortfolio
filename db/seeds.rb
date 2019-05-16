# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


12.times do 
    Blog.create!(
        title: Faker::Book.title,
        body: Faker::Lorem.paragraph
    )
end

10.times do |portfolio_item|
    Portfolio.create!(
			title: "Portfolio title #{portfolio_item}",
			subtitle: Faker::Lorem.word,
			body: Faker::Lorem.paragraph,
			# thumb_image: Faker::Placeholdit.image('350x200'),
			# video: Faker::Placeholdit.image('600x400'),
			source_code: Faker::Internet.url
    )
end

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		percent_utilized: 15
	)
end