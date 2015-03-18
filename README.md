# ga_bewd
GA's back-end web development class


<h2>Class Notes</h2>

<em>2.24.15</em>

Web development is creating web sites that <em>do something</em>.

Front end is the visual experience on the browser. (HTML, CSS, JavaScript).
Back end is the browser interaction with the server. (Ruby, Java, PHP, JavaScript).

Back end development is very complex and there is always more to learn. It never stops being challenging and there is never a shortage of work to do.

Think like a developer. When you get stuck on a problem it's important to follow these steps.
<ol>
	<li>Stop (take your hands off the keyboard).</li>
	<li>Think: 'what problem am I trying to solve?'</li>
	<li>Think: 'what assumptions am I making?'</li>
	<li>Think: 'how can I solve it?' (trust your first instinct)</li>
	<li>If you're not sure, do research or ask peers.</li>
	<li>Once you understand it, then you write your code.</li>
</ol>

Stop -> Think -> Code

Git commands to add homework from the command line.
Go to bewd_sf_8_homework/tylerswartz
```
git add . -A
git commit -m"msg"
git push
```
Then go to github and press the pull request button.

<em>2.26.15</em>

Programming. We are teaching a computer to think like us.

<strong>Variables</strong> allow you to save a data value for use later. This is called assigning or setting a variable. `name = "steven"`. In this case `name` is a variable that is holding the value `steven`.

Ruby gem <strong>pry</strong> allows you to do ruby in the console. Good for practicing basic ruby commands. Just type `pry`.

<strong>Data Types:</strong>
<ol>
	<li>integer or fixnum - which are whole numbers. <code>1</code> and <code>2</code>.</li>
	<li>floats - numbers with decimals. <code>1.334</code> and <code>2.0</code>.</li>
	<li>string - a line of text. <code>'this is a string'</code>.</li>
	<li>boolean - a statement that resolves in <code>true</code> or <code>false</code>.</li>
</ol>

Ruby does not automatically convert data types. Use `.to_s` to make a number into a string or `.to_i` to make a string into a integer.

<strong>Methods</strong> are a way to store a block of code, such as a formula and call it at a later time. They are like math equations. Methods have a name, parameters and return values. Methods in Ruby <em>always</em> have return values. Methods let us train the program to remember a set of code to perform later. Making a new method is called <em>declaring</em> a method. They are sometimes called functions, but they are not exactly the same thing.

Example method:
```
def multiply(x,y)
	x * y
end
```
Then you call that method and pass in the variables, `multiply(7,2)` returns `14`.

As you become a stronger ruby programmer you can remove the () when calling a method. `multiply 7, 2`.

`puts` displays the string that follows it. `puts 'hello world' => hello world`.

`gets` waits for an input. Gets always take the `\n` (escaping N) at the back of the input because that is a 'new line' caused by the enter button completing the input.

`.chomp` removes any tabs, white spaces, escaping N's, from the get. `gets.chomp` would remove the trailing `\n` from the input. 

`ls` gives you all the ruby methods available to that object. `ls 4` gives you all the methods for a integer. Very helpful when learning. `ls 'string'` for methods that are available for strings. `ls` only works when running `pry`.


Homework: read and do exercises chapter 2 - 8.

<em>3.3.15</em>

<strong>Collections</strong> are groups of data. There are two common types of collections, Arrays and Hashes.

<strong>Arrays</strong> don't have labels. They are a collection of data that have a numerical index that starts at 0. Ruby allows you to hold any type of data in an array.
```
names = ['john','james','tyler']
```
Since arrays are <em>Objects</em>, they can have their own methods. `names.first` returns `"john"`.

To add another name to the array use `names.push 'jody'` or `names << 'Jody'`.

To check if a value is in the array use `names.include? 'tyler'` => `true`

You can also use a method when looking through an array. Let's say there are two `'tyler'` in the array and we want to find them all. `names.find_all { |x| x == 'tyler'}`.

`.split` and `.join` are used a lot. `names.join ', '` => `'john, james, tyler'`.

<strong>Hashes</strong> are collections just like Arrays. However instead of using numbers as an <em>index</em>, it uses other values to access the data held in the hash. These are called <em>keys</em>.
```
person = {name: 'tyler', address: '123 Main St'}
<!-- or -->
number = {'John' = '123-345-3421', 'Tyler' = '143-321-2334'}
```

Arrays and Hashes together! 
```
clothing = {socks: ["red","green"], shirts:["blue","green"] }
users = [ {id: 1, name: "Bill", username: "bigg_bill"}, {id: 2, name: "John", username: "jason"}]
```

How to store data in a hash:
```
time_travlers = {'Doctor Who' => 'TARDIS', 'Marty McFly' => 'Delorian'}
```

Create an array of TV shows that has hashes of data:
```
tv_shows = [
						{:show_name => 'It's Always Sunny', :rating => 10, :year => 2003},
						{:show_name => 'House of Cards', :rating => 8, :year => 2013},
						{:show_name => 'Breaking Bad', :rating => 7, :year => 2008}]
```
To identify the keys of the hash use `tv_shows.keys` => `['show_name','rating','year']`.

To navigate through the array and hash:
```
tv_shows[0]['show_name']
=> 'It's Always Sunny'
```

<strong>Loop</strong> is running code and then starting over. <strong>Iteration</strong> is repeating a loop until satisfying some condition.
```
dancing = true
while dancing do
	puts "I'm dancing and I won't stop"
end
```

To loop through an index use the `each` method.
```
rocks.each do |rock|
	puts rock
end
```
A block is a special ruby way of passing a block of code as an argument to a method in a very easy to read and write way.

Homework
<ol>
	<li>Secret number exercise (use Resources.md file for reference.) Due on Tuesday</li>
	<li>Read the Bastard's Book of Ruby Collections chapter (link in Resources.md)</li>
</ol>

<em>3.5.15</em>

Out of town, missed class. Topic was APIs

```
# Create a Ruby program that will output information from an API. Example APIs in Resources.md, both beginner and advanced. Save the file to your personal homework folder /api01 folder with the name of the resource. (like "reddit_api.rb").

#required
require 'json'
require 'rest-client'

#ask for zipcode
puts 'This is outputed information from the Google Maps API'
puts 'What US zipcode would you like to look up?'
zipcode = gets.chomp

#send GET request to Google
maps_api = JSON.load(RestClient.get("http://maps.googleapis.com/maps/api/geocode/json?address=" + zipcode))

#select and store the lat & lng data
lat = maps_api['results'][0]['geometry']['location']['lat']
long = maps_api['results'][0]['geometry']['location']['lng']

#output data
puts "Here is the latitude and longitude of " + zipcode.to_s + "..."
puts "Latitude: " + lat.to_s
puts "Longitude: " + long.to_s
```

<em>3.10.15</em>

<strong>Object Oriented Programming</strong> is a way of defining programs using <em>objects</em>. Just like methods allow us to reuse code, Objects allow us to create things that behave in similar ways to each other. Objects tie together related behaviors (methods) and data (variables) to match the way we think about things.

<em>Class</em> is a "blueprint" for an object. It defines what an object will look like and how it will behave when it's created.

Defining a class
```
class House
end
```
<em>Instance</em> is the creation of an Object from the Class blueprint.
Creating a new instance with `my_house = House.new`. Note that capitalization matters.

<strong>Basic Class Example</strong>

```
class Person
	attr_accessor :name, :age, :address

	def greet
		puts "Hi my name is #{@name}"
	end

	def address
		puts "My address is #{@address}"
	end
end

eric = Person.new
eric.name = "Eric"
eric.address = "123 Rock St. Oakland"

puts eric.greet
puts eric.address
```

<strong>Why use objects?</strong>
<ol>
	<li>Groups together related methods
		<ul>
			<li>Person: greet, share_address</li>
			<li>String: upcase, downcase, split</li>
			<li>Array: length, first, shuffle</li>
		</ul>
	</li>
	<li>Ensure that data storage is consistent
		<ul>
			<li>Hash: can have any key</li>
			<li>Object: can only have specified attributes (defined using <code>attr_accessor</code>)</li>
		</ul>
	</li>
	<li>Ensures that data and behavior are
		<ul>
			<li>Hash: only has built-in Ruby methods</li>
			<li>Object: can define any useful methods you want</li>
		</ul>
	</li>
</ol>

<em>class example of creating an Apartment object</em>
```
class Apartment
	attr_accessor :name, :rent, :sqft, :num_bedrooms, :num_bathrooms

	def initialize(name,rent,sqft,num_bedrooms,num_bathrooms)
		@name = name
		@rent = rent
		@sqft = sqft
		@num_bedrooms = num_bedrooms
		@num_bathrooms = num_bathrooms
	end
end

oak_wood = Apartment.new('Oak Wood Apartments',2000,1500,2,1)
```

<em>3.12.15</em>

<strong>Ruby Review</strong>

<em>Variables</em> - store data with an associated name.

<em>Interpolation</em> is used to put a variable into a string. `str = "hello, #{name}"`. Note that its important to use double quotes when using interpolation, but not in other situations.

<em>Boleans</em> are logic operators. `==, !=, >, <, <=, >=, .eql?`

<em>Symbols</em> are used in places where you would use string literals. Use `{name: 'Bilbo'}` instead of `{'name' => 'Bilbo'}`.

<em>Collections</em> are Arrays and Hashes. Arrays are for storing ordered lists of things. Hashes are for storing information about an individual thing. Hashes and Arrays can be mixed together to store lists of related data, such as an API.

<em>Iterations</em> - running a loop through a list of items.
```
names.each do |name|
	puts name
end
```
<em>Methods</em> are like math equations. They have a name and they take in parameters and return values. 

<em>Class</em> is a "blueprint" for an object. It defines what an object will look like and how it will behave when it's created.

<em>Objects</em> allow us to create things that behave in similar ways to each other. Objects tie together related behaviors (methods) and data (variables) to match the way we think about things.

<em>attr_reader</em> only allows other objects to read a value.

<em>attr_accessor</em> allows other objects to read and write a value.

<em>Attributes</em> are shortcuts for creating methods and their matching instance variables, which use @.

HW: Mid-term project is due next Thursday (3/26)

<em>3.17.15</em>










