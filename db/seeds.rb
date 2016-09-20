# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
groups = Group.create([{name: 'axiss'},{name: 'allies'}])
places = Place.create([{name: 'Zamalek' ,longitude: "4.4", latitude: "5.5"},{name: 'Maadi',longitude: "4.4", latitude: "5.5"},
	{name: 'Smart Village', longitude: "3.3", latitude: "2.2"},{name: "New Cairo", longitude: "1.1",latitude: "1.1"}])
