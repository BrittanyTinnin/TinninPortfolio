# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |portfolio_item|
    Portfolio.create!(
			title: "Portfolio title #{portfolio_item}",
			subtitle: Faker::Lorem.word,
			body: Faker::Lorem.paragraph,
			# thumb_image: Faker::Placeholdit.image('350x200'),
			# main_image: Faker::Placeholdit.image('600x400'),
			source_code: Faker::Internet.url
    )
end

1.times do 
	Skill.create!(
		title: "JavaScript", percent_utilized: 35
	)
end

1.times do 
	Skill.create!(
		title: "Ruby", percent_utilized: 45
	)
end

1.times do 
	Skill.create!(
		title: "Ruby On Rails", percent_utilized: 50
	)
end

1.times do 
	Skill.create!(
		title: "React", percent_utilized: 35
	)
end
