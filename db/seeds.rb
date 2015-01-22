# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Partner.destroy_all
Activity.destroy_all
Goal.destroy_all

mandy = User.create({
	username: "mandytrex",
	first_name: "Amanda",
	last_name: "Trexler",
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
	last_name: "Napoleon",
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
	last_name: "Priefer",
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
	last_name: "Trexler",
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
	last_name: "Reynolds",
	age: 22,
	experience: 3,
	gender: "male",
	days_available: "Mon, Thu, Sun",
	hours_available: "evening",
	password: "drew",
	password_confirmation: "drew",
	image_url: "http://i.imgur.com/UluUsqx.jpg"
	})

gym = Partner.create({
 			coordinator_id: nellie.id,
 			name: "Gym Beginners"
 			})

commuters = Partner.create({
 				coordinator_id: drew.id,
 				name: "Commuter Cardio"
 				})

track = Partner.create({
 				coordinator_id: joe.id,
 				name: "Track Stars"
 				})

summer = Partner.create({
 				coordinator_id: lauren.id,
 				name: "Lauren Amanda"
 				})


marathon = Goal.create({
					fitness_goal: "Long Island Marathon",
					theme: "running",
					achieved: false,
					end_date: '2015/05/02'
					})

trx = Goal.create({
			fitness_goal: "TRX every Tuesday for 2015",
			theme: "TRX Class",
			achieved: false,
			end_date: '2016/01/01',
			image_url: "http://thestudiomadison.com/wp-content/uploads/2013/01/Yoga-TRX-3.jpg"
			})


mandy.partners << track
mandy.partners << summer
joe.partners << track
lauren.partners << summer
lauren.partners << commuters
drew.partners << commuters
nellie.partners << gym
drew.partners << gym



track.goals << marathon
gym.goals << trx

activities = ["Running",
 							"Walking",
 							"Bike-Riding", 
 							"Soccer", 
 							"Kick-Boxing",  
 							"Zumba", 
 							"Fitness Classes", 
 							"Volleyball",
 							"Yoga",
 							"Skating",
 							"Wrestling",
 							"Baseball",
 							"Water Sports",
 							"Rock Climbing",
 							"Tennis",
 							"Kayaking",
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