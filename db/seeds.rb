# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(:name => "User_1")
u2 = User.create(:name => "User_2")
u3 = User.create(:name => "User_3")
u4 = User.create(:name => "User_4")
u5 = User.create(:name => "User_5")
u6 = User.create(:name => "User_6")
u7 = User.create(:name => "User_7")

e1 = Event.new
e1.description = "Je suis l'event n° 1"
e1.place = "Place1"
e1.creator = u1
e1.date = DateTime.now + 2.days + 2.hours
e1.save
e2 = Event.new
e2.description = "Je suis l'event n° 2"
e2.place = "PlaceA"
e2.creator = u2
e2.date = DateTime.now - 2.days + 2.hours
e2.save
e3 = Event.new
e3.description = "Je suis l'event n° 3"
e3.place = "PlaceB"
e3.creator = u3
e3.date = DateTime.now - 6.days + 2.hours
e3.save
e4 = Event.new
e4.description = "Je suis l'event n° 4"
e4.place = "Place5"
e4.creator = u3
e4.date = DateTime.now + 6.days + 2.hours
e4.save
e5 = Event.new
e5.description = "Je suis l'event n° 5"
e5.place = "PlaceB"
e5.creator = u3
e5.date = DateTime.now + 15.days + 2.hours
e5.save
e6 = Event.new
e6.description = "Je suis l'event n° 6"
e6.place = "PlaceC"
e6.creator = u6
e6.date = DateTime.now - 15.days + 2.hours
e6.save
e7 = Event.new
e7.description = "Je suis l'event n° 6"
e7.place = "Place3"
e7.creator = u7
e7.date = DateTime.now + 2.months + 2.hours
e7.save

e1.attendees << u1
e1.attendees << u2
e1.attendees << u3
e2.attendees << u2
e2.attendees << u3
e2.attendees << u4
e3.attendees << u2
e3.attendees << u4
e3.attendees << u5
e5.attendees << u7
