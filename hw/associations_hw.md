<h1>Associations Homework</h1>

<h2>Final Project</h2>
<p>Bar Roulette that utilizes the Yelp and Uber APIs.</p>
<ol>
	<lh>User Flow and Logic</lh>
	<li>Login with Uber credentials (authenticated via Uber api).</li>
	<li>User confirms their location on map.</li>
	<li>User 'spins' the roulette wheel.</li>
	<li>Ping Uber API and confirm they are located within an Uber coverage zone.</li>
	<li>Ping Yelp API and request the nearest 25 bars.</li>
	<li>Randomly select a bar from the 25 returned.</li>
	<li>Request Uber car to user's location inputing the bar's address into Uber's destination field.</li>
	<li>Notify user that a 'mystery' bar has been selected and an Uber is enroute to pick them up. Give them the ability to cancel.</li>
	<li>Driver arrives and picks up user. User still does not the name of the bar. Only the address has been communicated to the driver and user.</li>
	<li>User completes ride.</li>
	<li>User is notified what bar they need to head to for a drink.</li>
</ol>

<em>Two Tables for Bar Roulette</em>

Users
 :name
has_many :locations

Locations (to store where people have taken cars to)
	:user_id
	:bar_name
	:bar_street_address
	:bar_city
	:bar_state
	:bar_zipcode
belongs_to :user




<h2>Hacker News Model</h2>

<em>Three Tables for HN</em>

Users
	:name
	:email
has_many :articles

Articles
	:user_id
	:title
	:link
	:votes
	:comments
belongs_to :user
has_many :comments

Comments
	:user_id
	:article_id
	:content
belongs_to :user
belongs_to :article


