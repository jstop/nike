# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Footwork.create({first: 'josh', last: 'stein', score: 8})
Footwork.create({first: 'jared', last: 'stein', score: 3})
Footwork.create({first: 'larry', last: 'david', score: 2})
Footwork.create({first: 'david', last: 'stein', score: 28})
Footwork.create({first: 'nancy', last: 'stein', score: 5})

Control.create({first: 'josh', last: 'stein', score: 8})
Control.create({first: 'jared', last: 'stein', score: 3})
Control.create({first: 'larry', last: 'david', score: 2})
Control.create({first: 'david', last: 'stein', score: 28})
Control.create({first: 'nancy', last: 'stein', score: 5})

Vertical.create({first: 'josh', last: 'stein', score: 8})
Vertical.create({first: 'jared', last: 'stein', score: 3})
Vertical.create({first: 'larry', last: 'david', score: 2})
Vertical.create({first: 'david', last: 'stein', score: 28})
Vertical.create({first: 'nancy', last: 'stein', score: 5})
