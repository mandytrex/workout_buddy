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

mandy = User.create({
	username: "mandytrex",
	first_name: "Amanda",
	email: "amandatrexler1012@gmail.com",
	age: 23,
	experience: 4,
	gender: "female",
	days_available: "Mon, Wed, Fri, Sat, Sun",
	hours_available: "morning, evening",
	password: "amanda",
	password_confirmation: "amanda",
	image_url: "http://i.imgur.com/lL29IFg.jpg"
	})

joe = User.create({
	username: "joenapo",
	first_name: "Joe",
	email: "joenapoleon03@gmail.com",
	age: 21,
	experience: 5,
	gender: "male",
	days_available: "Mon, Tues, Wed, Thu, Fri, Sat, Sun",
	hours_available: "morning, evening",
	password: "joe",
	password_confirmation: "joe",
	image_url: "http://i.imgur.com/Getdhxt.jpg"
	})

lauren = User.create({
	username: "laurenprief",
	first_name: "Lauren",
	email: "lenpxoxo@aol.com",
	age: 23,
	experience: 4,
	gender: "female",
	days_available: "Tues, Thu, Sat",
	hours_available: "morning",
	password: "lauren",
	password_confirmation: "lauren",
	image_url: "http://i.imgur.com/6W17q9d.jpg"
	})

nellie = User.create({
	username: "ntrexler",
	first_name: "Nellie",
	email: "nellietrexler@gmail.com",
	age: 64,
	experience: 2,
	gender: "female",
	days_available: "Mon, Tues, Wed, Thu, Fri, Sat, Sun",
	hours_available: "morning, afternoon",
	password: "nellie",
	password_confirmation: "nellie",
	image_url: "http://i.imgur.com/THYyxel.jpg"
	})

drew = User.create({
	username: "drewreynolds",
	first_name: "Drew",
	email: "amanda.trexler@baruchmail.cuny.edu",
	age: 22,
	experience: 3,
	gender: "male",
	days_available: "Mon, Thu, Sun",
	hours_available: "evening",
	password: "drew",
	password_confirmation: "drew",
	image_url: "http://i.imgur.com/UluUsqx.jpg"
	})


PartnerRequest.create({
	requester_id: mandy.id,
	receiver_id: joe.id,
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


activities.each do |activity|
	Activity.create({
	name: activity
	})
end

