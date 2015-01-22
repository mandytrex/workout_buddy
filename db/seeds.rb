# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Group.destroy_all
Activity.destroy_all
Goal.destroy_all

mandy = User.create({
	username: "mandytrex",
	first_name: "Amanda",
	last_name: "Trexler",
	age: 23,
	password: "amanda",
	password_confirmation: "amanda",
	image_url: "http://i.imgur.com/lL29IFg.jpg"
	})

joe = User.create({
	username: "joenapo",
	first_name: "Joe",
	last_name: "Napoleon",
	age: 21,
	password: "joe",
	password_confirmation: "joe",
	image_url: "http://i.imgur.com/Getdhxt.jpg"
	})

lauren = User.create({
	username: "laurenprief",
	first_name: "Lauren",
	last_name: "Priefer",
	age: 23,
	password: "lauren",
	password_confirmation: "lauren",
	image_url: "http://i.imgur.com/6W17q9d.jpg"
	})

nellie = User.create({
	username: "ntrexler",
	first_name: "Nellie",
	last_name: "Trexler",
	age: 64,
	password: "nellie",
	password_confirmation: "nellie",
	image_url: "http://i.imgur.com/THYyxel.jpg"
	})

drew = User.create({
	username: "drewreynolds",
	first_name: "Drew",
	last_name: "Reynolds",
	age: 22,
	password: "drew",
	password_confirmation: "drew",
	image_url: "http://i.imgur.com/UluUsqx.jpg"
	})

gym = Group.create({
 			coordinator_id: nellie.id,
 			name: "Gym Beginners"
 			})

commuters = Group.create({
 				coordinator_id: drew.id,
 				name: "Commuter Cardio"
 				})

track = Group.create({
 				coordinator_id: joe.id,
 				name: "Track Stars"
 				})

summer = Group.create({
 				coordinator_id: lauren.id,
 				name: "Summer, Here We Come!"
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


mandy.groups << track
joe.groups << track
lauren.groups << summer
drew.groups << commuters
nellie.groups << gym
mandy.groups << gym
nellie.groups << summer
mandy.groups << commuters


track.goals << marathon
gym.goals << trx

activities = ["Running",
 							"Walking",
 							"Bike-Riding", 
 							"Soccer", 
 							"Kick-Boxing", 
 							"Jogging", 
 							"Zumba", 
 							"Fitness Classes", 
 							"Volleyball",
 							"Yoga",
 							"Skating",
 							"Wrestling",
 							"Baseball",
 							"Water Sports",
 							"Skateboarding",
 							"Surfing",
 							"Rock Climbing",
 							"Tennis",
 							"Kayaking",
 							"Skiing/Snowboarding",
 							"Hockey",
 							"Weightlifting",
 							"Crossfit",
 							"Swimming",
 							"Diving",
 							"Dance",
 							"Cheerleading",
 							"Gymnastics",
 							"Football",
 							"Martial Arts",
 							"Lacrosse",
 							"Strength Training"
 							 ]


activities.each do |activity|
	Activity.create({
	name: activity
	})
end

