# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Activity.destroy_all
Goal.destroy_all
PartnerRequest.destroy_all
Day.destroy_all


joe = User.create({
	username: "joenapo",
	first_name: "Joe",
	email: "joenapoleon03@gmail.com",
	phone: '6314187577',
	age: 21,
	experience: 5,
	gender: "male",
	password: "joe",
	password_confirmation: "joe",
	avatar: "http://i.imgur.com/Getdhxt.jpg"
	})

lauren = User.create({
	username: "laurenprief",
	first_name: "Lauren",
	email: "lenpxoxo@aol.com",
	phone: '6318050547',
	age: 23,
	experience: 4,
	gender: "female",
	password: "lauren",
	password_confirmation: "lauren",
	avatar: "http://i.imgur.com/6W17q9d.jpg",
	})


mandy = User.create({
	username: "mandytrex",
	first_name: "Amanda",
	email: "amandatrexler1012@gmail.com",
	phone: '6318350711',
	age: 23,
	experience: 4,
	gender: "female",
	password: "amanda",
	password_confirmation: "amanda",
	avatar: "http://i.imgur.com/lL29IFg.jpg",
	})

nellie = User.create({
	username: "ntrexler",
	first_name: "Nellie",
	email: "nellietrexler@gmail.com",
	phone: '5168193697',
	age: 64,
	experience: 2,
	gender: "female",
	password: "nellie",
	password_confirmation: "nellie",
	avatar: "http://i.imgur.com/THYyxel.jpg",
	})

drew = User.create({
	username: "drewreynolds",
	first_name: "Drew",
	email: "amanda.trexler@baruchmail.cuny.edu",
	phone: '6318350711',
	age: 22,
	experience: 3,
	gender: "male",
	password: "drew",
	password_confirmation: "drew",
	avatar: "http://i.imgur.com/UluUsqx.jpg",
	})

natalia = User.create({
	username: "nbarrios",
	first_name: "Natalia",
	email: "amanda.trexler@baruchmail.cuny.edu",
	phone: '6318350711',
	age: 22,
	experience: 2,
	gender: "female",
	password: "natalia",
	password_confirmation: "natalia",
	avatar: "http://i.imgur.com/2yRBAkw.jpg",
	})


PartnerRequest.create({
	requester_id: mandy.id,
	receiver_id: joe.id,
	message: "Please be my partner!"
	})

PartnerRequest.create({
	requester_id: joe.id,
	receiver_id: mandy.id,
	message: "Please be my partner!"
	})

PartnerRequest.create({
	requester_id: nellie.id,
	receiver_id: lauren.id,
	message: "Want to be partners?"
	})

PartnerRequest.create({
	requester_id: drew.id,
	receiver_id: nellie.id,
	message: "You seem cool, let's partner up."
	})

PartnerRequest.create({
	requester_id: mandy.id,
	receiver_id: drew.id,
	message: "Let's work out together."
	})

PartnerRequest.create({
	requester_id: joe.id,
	receiver_id: natalia.id,
	message: "Hey."
	})

activities = ["Running",
 							"Walking",
 							"Bike-Riding", 
 							"Soccer", 
 							"Kick-Boxing",  
 							"Zumba", 
 							"Fitness Classes", 
 							"Volleyball",
 							"Yoga",
 							"Wrestling",
 							"Baseball",
 							"Water Sports",
 							"Rock Climbing",
 							"Tennis",
 							"Skiing/Snowboarding",
 							"Hockey",
 							"Weightlifting",
 							"Crossfit",
 							"Swimming",
 							"Dance",
 							"Gymnastics",
 							"Football",
 							"Martial Arts",
 							"Strength Training"
 							 ]

days = ["Monday",
				"Tuesday",
				"Wednesday",
				"Thursday",
				"Friday",
				"Saturday",
				"Sunday"
			]


activities.each do |activity|
	Activity.create({
	name: activity
	})
end


days.each do |day|
	Day.create({
		day: day
		})
end

amanda.activities.push("Running")

nellie.activities.push("Walking")

lauren.activities.push("Strength Training")
lauren.activities.push("Kick-Boxing")

drew.activities.push("Swimming")


joe.activities.push("Wrestling")
joe.activities.push("Running")
joe.activities.push("Weightlifting")

natalia.activities.push("Dance")

