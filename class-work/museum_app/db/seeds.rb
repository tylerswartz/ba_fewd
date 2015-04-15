Museum.delete_all
puts "Delete old museums and adding new Museums"
Museum.create [
  {
    name: "The Louvre",
    city: "Paris"
  },
  {
  	name: "The Guggenheim",
    city: "New York City"
  },
  {
  	name: "de Young Museum",
    city: "San Francisco"
  }]

puts "Delete old and add new Artists"
Artist.delete_all
Artist.create [
	{
		name: "Winston"
		hometown: "NYC"
		birth: 1985
	},
	{
		name: "MJ"
		hometown: "LA"
		birth: 1965
	},
	{
		name: "Seal"
		hometown: "Chicago"
		birth: 1974
	},
	{
		name: "MC Hammer"
		hometown: "LA"
		birth: 1972
	},
]

puts "Delete old and add new Paintings"
Painting.delete_all
Painting.create [
	{
		title: "Sunrise"
		year: 2004
		artist_id: 2
		museum_id: 2
	},
	{
		title: "Sunset"
		year: 2004
		artist_id: 1
		museum_id: 2
	},
	{
		title: "Night"
		year: 2004
		artist_id: 1
		museum_id: 2
	},
	{
		title: "Day"
		year: 2004
		artist_id: 2
		museum_id: 3
	},
		title: "Evening"
		year: 2004
		artist_id: 1
		museum_id: 1
	},
		title: "Twilight"
		year: 2004
		artist_id: 1
		museum_id: 2
	},
		title: "Morning"
		year: 2004
		artist_id: 1
		museum_id: 4
	},
]