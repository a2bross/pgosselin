# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# projects = Project.create(
#   name: "Amiens 2 match",
#   activity: "AMO",
#   category: "RE",
#   location: "Amiens",
#   size: "123",
#   promoter: "Edouard Denis",
#   architect: "Garnier Aag",
#   manager: "Nemea",
#   photo: "http://res.cloudinary.com/adb0wzhme6/image/upload/v1514301996/Capture_d_écran_2017-12-26_à_16.25.15_yv2xut.png",
#   start_date: Date.new(2014,1,1),
#   end_date: Date.new(2016,1,1)
#   )
# puts "project created"

url = "http://res.cloudinary.com/adb0wzhme6/image/upload/v1514301996/Capture_d_écran_2017-12-26_à_16.25.15_yv2xut.png"
project = Project.new(
  name: "Amiens 2 match",
  activity: "AMO",
  category: "RE",
  location: "Amiens",
  size: "123",
  promoter: "Edouard Denis",
  architect: "Garnier Aag",
  manager: "Nemea",
  start_date: Date.new(2014,1,1),
  end_date: Date.new(2016,1,1)
  )
project.remote_photo_url = url
project.save
puts "project created"
