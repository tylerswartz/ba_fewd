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
		name: "Winston",
		hometown: "NYC",
		birth: 1985
	},
	{
		name: "MJ",
		hometown: "LA",
		birth: 1965
	},
	{
		name: "Seal",
		hometown: "Chicago",
		birth: 1974
	},
	{
		name: "MC Hammer",
		hometown: "LA",
		birth: 1972
	},
]

puts "Delete old and add new Paintings"
Painting.delete_all
Painting.create [
	{
		title: "Sunrise",
		year: 2004,
		artist_id: 2,
		museum_id: 2,
		image_url: "http://i.huffpost.com/gen/1168258/thumbs/o-KANYE-WEST-ALBUM-ART-570.jpg?1"
	},
	{
		title: "Sunset",
		year: 2004,
		artist_id: 1,
		museum_id: 2,
		image_url: "http://www.refinedguy.com/wp-content/uploads/2013/06/9-808s-and-Heartbreak-2008-Kanye-West-Album-Covers.jpg"
	},
	{
		title: "Night",
		year: 2004,
		artist_id: 1,
		museum_id: 2,
		image_url: "http://www.refinedguy.com/wp-content/uploads/2013/06/15-The-College-Dropout-2004-Kanye-West-Album-Covers.jpg"
	},
	{
		title: "Day",
		year: 2004,
		artist_id: 2,
		museum_id: 3,
		image_url: "http://d.ibtimes.co.uk/en/full/374524/kanye-west.jpg"
	},
	{
		title: "Evening",
		year: 2004,
		artist_id: 1,
		museum_id: 1,
		image_url: "http://www.yorapper.com/wp-content/uploads/2012/09/clique.jpg"
	},
	{
		title: "Twilight",
		year: 2004,
		artist_id: 1,
		museum_id: 2,
		image_url: "http://www.hollywoodnews.com/wp-content/uploads/2010/09/kanye-west-runaway-album-cover-wd.jpg"
	},
	{
		title: "Morning",
		year: 2004,
		artist_id: 1,
		museum_id: 1,
		image_url: "http://cdn.nahright.com/news/m.php/2010/07/kanye-west-power-single-cover.png"
	}
]