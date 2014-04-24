namespace :db do
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Grantopher", 
						email: "shadowcarson@gmail.com",
						password: "sidious",
						password_confirmation: "sidious",
						admin: true)
		99.times do |n|
			name 		= Faker::Name.name
			email		= "example-#{n+1}@petulant-octo-tyrion.com"
			password 	= "password"
			User.create!(	name: 					name,
							email: 					email,
							password: 				password,
							password_confirmation: 	password)
		end
	end
end