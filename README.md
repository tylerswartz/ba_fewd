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

<em>Objects</em> allow us to create things that behave in similar ways to each other. Objects tie together related behaviors (methods) and data (variables) to match the way we think about things. Defining methods and attributes is how we create the Object's API. What is inside the object doesn't matter when you're using them, only the outside API matters.

<em>Scope</em> determines how long variables and objects live for in object oriented programs.

<em>attr_reader</em> only allows other objects to read a value.

<em>attr_accessor</em> allows other objects to read and write a value.

<em>Attributes</em> are shortcuts for creating methods and their matching instance variables, which use @.

<em>APIs</em> allow you to read data form websites. Your own website can provide APIs to others. When designing a Class, you are creating an Object's API. When you create an application in Rails, you are creating a website API. 

HW: Mid-term project is due next Thursday (3/26)

<em>3.17.15</em>

<strong>Ruby on Rails</strong>

Why use it?
<ul>
	<li>Very rapid development time; no difference between prototypes and real sites code.</li>
	<li>Designed to make security and databases easy and transparent to the developer.</li>
	<li>Scalable; the same app you create right now on your command line can be used by millions.</li>
	<li>Has been around for a very long time (10yrs) and is still getting better.</li>
	<li>Uses Ruby, which means a great community with lots of open source libraries.</li>
</ul>

How it works:
<ol>
	<li>Request URL from website.</li>
	<li>Send Request/Routes (API) to server, which direct to the Controller (the switchboard of the app).</li>
	<li>Controller then uses logic of the Model to get data from Database.</li>
	<li>Returns data and puts it together with the Views (HTML/CSS).</li>
	<li>Responds to user with the rendered views & data.</li>
</ol>

To input ruby code into html you use special html tags
```
 <% @apartments.each do |apartment| %>
 	<h2>Apartment Name: <%= apartment.name %></h2>
 <% end %>
```
`<% code %>` doesn't show on page. `<%= code %>` equals sign shows data on page.

To start a rails app: 
```
rails new project_name
cd project_name
rails server
```

To create a new Controller: `rails generate controller Greeter`.

File locations for Rail Projects
<ul>
	<li>All Routes are in config/routes.rb</li>
	<li>Controller is in app/controllers/greeter_controller.rb</li>
	<li>View is in app/views/greeter/hello.html.erb</li>
	<li>CSS, JS, Images - app/assets</li>
	<li><strong>Classes that respond to requests - app/controllers</strong></li>
	<li>Utility modules with handy methods - app/helpers</li>
	<li>Classes that define outbound emails - app/mailers</li>
	<li><strong>Models are Classes (eg User, Comment, post) - app/models</strong></li>
	<li><strong>Templates that controllers use to render HTML. - app/views</strong></li>
	<li>Master templates to be used throughout your website - app/views/layouts</li>
</ul>

For additional info on Rails setup check out the Rails Guide, 'Getting Started with Rails'.

<em>3.19.15</em>

<strong>Routes</strong>

Browsers send some text to a web server. Big hash of data, but the important piece is the type of request (get/post/put) and the URL associated with that request.

Rails uses "resources" to define a standard set of actions for HTTP verbs. The standard routes can be found in the class slides.

<table>
	<tr>
		<th>HTTP Verb</th>
		<th>Path</th>
		<th>Action</th>
		<th>Used For</th>
	</tr>
	<tr>
		<td>GET</td>
		<td>/books</td>
		<td><code>index</code></td>
		<td>display all books</td>
	</tr>
	<tr>
		<td>GET</td>
		<td>/books/new</td>
		<td><code>new</code></td>
		<td>return an HTML form for creating a new book</td>
	</tr>
	<tr>
		<td>POST</td>
		<td>/books</td>
		<td><code>create</code></td>
		<td>create a new book</td>
	</tr>
	<tr>
		<td>GET</td>
		<td>/books/:id</td>
		<td><code>show</code></td>
		<td>display a specific book</td>
	</tr>
	<tr>
		<td>GET</td>
		<td>/books/:id/edit</td>
		<td><code>edit</code></td>
		<td>return an HTML form for editing a book</td>
	</tr>
	<tr>
		<td>PUT</td>
		<td>/books/:id</td>
		<td><code>update</code></td>
		<td>update a specific book</td>
	</tr>
	<tr>
		<td>DELETE</td>
		<td>/books/:id</td>
		<td><code>destroy</code></td>
		<td>delete a specific book</td>
	</tr>
</table>

<em>GET</em> - Gets information (i.e. visit the bookstore homepage, get a list of all books).

<em>POST</em> - Create something (i.e. create a new book in the bookstore).

<em>PUT/PATCH</em> - Update an object (i.e. update the book).

<em>DESTROY</em> - Delete an object.

MVC Architecture (Model, View, Controller):
<ul>
	<li>Software architecture pattern.</li>
	<li>Model - representation of your data (users, books, etc...)</li>
	<li>View - the way we present this data to our users (HTML, JSON, XML, plain text)</li>
	<li>Controller - receive user commands, interpret them, and pass them onto the appropriate part of the application.</li>
</ul>

<strong>Controllers</strong>. When a <em>route</em> is matched, it invokes an <em>action</em> in a <em>Controller</em> class by calling its corresponding <em>method</em>. Conventional actions: index, show, new, edit, create, update, destroy. It also reads in the browser parameters (called a <em>request</em>) and turns that into something your code can use.

<strong>Views</strong> are usually the same name as a controller action, `def show`. Views can be a mix of HTML and Ruby, using ERB:
```
<% @games.each do |game| %>
	<p class="game"><%= game %></p>
<% end %>
```

There are two kinds of ERB blocks. `<% "not printed" %>` and `<%= "printed" %>`. This is because everything has a return value in Ruby.

<strong>View Layouts</strong> (application.html.erb).
<ul>
	<li>All views are wrapped inside application.html.erb</li>
	<li>This is a layout, in the app/views/layouts directory.</li>
	<li>It is shared between all views.</li>
	<li>Used to set up your css, javascript, page title, etc.</li>
	<li>In the controller, you can specify a different layout.</li>
	<li>You can make your own custom layouts.</li>
</ul>

<strong>View Partials</strong> are 'pieces' of views that you can share between views. They are regular views, except they're rendered by other views instead of controllers. Partials always start with an underscore. When you reference them in rails, though, you don't use _.

*Model names should be singular, Controller names should be plural.

<strong>Command Line for starting new Rails app</strong>
```
rails new games
cd games
git init
git add .
gst  #fancy way of saying git status
git commit -m"first commit"
rails generate controller games index
rails generate controller SecretNumber new show
```

Other useful commands
```
rails s 	#starts server
rake routes  #gives you list of the routes
```

Instead of `<a href="#"> link</a>`  use `<%= link_to 'link', new_secret_number_path %>`. Here you are using the prefix from the routes (shown with `rake routes`) instead of a url path.

<em>3.24.15</em>

<strong>Rails Models</strong>

![Alt text](/rails-requests.png)

<strong>Models</strong> are responsible for: managing the database table, providing methods to access data, and application logic (aka business logic).

Models in rails' MVC structure help simplify working with databases. They correspond to an individual table and they contain most of your application code. "Skinny controllers, fat models".

<strong>Databases</strong> permanently stores data, handle tons of data at big scales and are not easy to use. But, rails makes it easier. Most databases store their data in tables. Each table is made up of <em>records</em> (rows) and <em>columns</em>.

Database Data Types:
<ul>
	<li>string</li>
	<li>text</li>
	<li>integer</li>
	<li>boolean</li>
	<li>float/decimal</li>
	<li>date and time</li>	
</ul>

<em>Plurality</em>: Models are always singular, Tables and Controllers are always plural.

Database CRUD is an acronym for the basic database operations: <em>C</em>reate, <em>R</em>ead, <em>U</em>pdate, <em>D</em>estroy.

```
# Create
Animal.create name: 'Giraffe', description: 'has a realllly long neck.'

# Read
giraffe = Animal.where name: 'Pokeshirt'

# Update
giraffe.update name: 'Baby Giraffe'

# Destroy
giraffe.destroy
```

Command to generate a model:
```
rails generate model Animal name:string size:string weight:integer
```

This is what it looks like when it creates a model:
```
invoke  active_record
    create    db/migrate/20140411150725_create_animals.rb
    create    app/models/animal.rb
    invoke    test_unit
    create      test/models/animal_test.rb
    create      test/fixtures/animals.yml
```



Good habit, in gemfile its important to add:
```
group: development do
	gem 'pry'
	gem 'pry-rails'
end
```
Then run `bundle install`. This give you the ability to debug with pry when you use the command `rails console`. If you are curious what methods a model has run `rails console` then call `ls` on the model (`ls Animal`). AcivteRecord::Querying#methods are the most common of the list to use.

Once you get a list of methods for something you can get the documentation in pry by doing `? Animal.all` and it will tell you what `.all` does. 

<strong>Migration</strong> safely changes the structure of your database. It's used to add/remove tables, add/remove columns from tables, modify columns in a table, and add a column index for fast search. Migrations are NOT used to change data.

Everytime you create a model and update the fields of the model you need to  migrate the database which basically updates it. Use `rake db:migrate`.

To find other commands that Rake does run `rake -T`.

<strong>Seeds</strong> are used in your database to have 'default data'. A common need is a list of countries in the world. We use seeds to fill our database with default data. Add the data to the seeds.rb file and then run `rake db:seed`.

Code to use models in controllers:
```
class ShirtsController < ActiveController::Base
  def index
    @shirts = Shirt.all
  end
  def show
    @shirt = Shirt.find(params[:id])
  end
end
```

Commands to interact with model and database:
```
Animal.all #prints out all animals in database
Animal.where(color:'brown') #returns all animals that are brown
Animal.find(1) # returns the first id animal in the form of an array
Animal.create name:'Possum', size: 'small', color: 'grey', weight: 100
magic_animals = Animal.where(breed: 'magic') #finds all animals that have a breed of magic and then add it into a new array called magic_animals
```

<em>3.26.15</em>

<strong>Forms</strong> are used to "GET" user input.

What are forms for?
<ul>
	<li>User profiles</li>
	<li>Creating new shirts</li>
	<li>Getting contact info from visitors</li>
	<li>Creating a tweet</li>
	<li>Posting on Facebook</li>
	<li>Searching on Google</li>
</ul>

Steps to create a form in the movies app.
Use the `form_tag` to create the form.
Find the path from `rake routes`.

This form is to search the movies. *`GET` method is typically used just for forms that search. `POST` would be a more typical form method.
```
<%= form_tag movies_path, method: 'GET' do%>
	<%= text_field_tag :q, params[:q] %>
	<%= submit_tag 'Search' %>
<% end %>	
```

Process for how a search works. When a user clicks 'Search':
<ol>
	<li>Goes to shirts#index.</li>
	<li>Passes in params[:q] from the form. You see '?q=' in the address bar.</li>
	<li>Models returns filter search results by name or description</li>
</ol>


<em>Validations and Creations</em>

What happens when someone fills out data in a form, like putting letters into a phone number field? What about required fields, or email addresses? <em>Validations</em> are a way to ensure that your models only get data that works with what you want. If the validation fails, it won't add a record to the database table. It's important that if validation fails the user is notified.

```
class Shirt < ActiveRecord::Base
  validates :name, :description, :image, presence: true
  validates :description, length: { minimum: 10 }
end
```

The most common used validations are Presence, Length, Inclusion, Format.

Form builders make creating forms for objects very easy. They <em>only</em> work with models.
```
<%= form_for @shirt do |f| %>
<% end %>
```

Rails controllers require you to white-list which fields a form can send using strong parameters. This is used to protect your site.
```
# at the bottom of the controller
private

def shirt_params
  params.require(:shirt).permit(:name, :description, :image)
end
```

In the Movie controller we add the line at the top: `validates :title, presence: true`.

Instance method is `Person#search`. 
Class method is `Person.search`. It is defined by having a method in the class of Person that is called `def self.search`.

<em>4.2.15</em>

<strong>Authentication</strong>

How does it work?
<ul>
	<li>User identify with username and password</li>
	<li>Tracking with a session</li>
	<li>Storing with a cookie</li>
	<li>Protecting with encryption</li>
</ul>

When storing passwords never store them as plain text. Always use encryption. The <strong>only</strong> types of encryption to use are <strong>bcrypt, blowfish, or SHA3</strong>.

<strong>Sessions</strong> are a special browser feature that hold per-site data for as long as the browser is open. They go away when the browser is closed. When the user is authenticated, we store their user_id in the session. The user_id allows us to look up the user's info.

<strong>Cookies</strong> are like sessions, except that they last until they expire. Cookies remain in between visits. They are used for storing small bits of data about users. Cookies allow web servers to provide a temporary unique identifier to a browser. Note, browser storage is not secure so sensitive data such as credit cards or passwords should <em>never</em> be stored in a cookie.

Authentication gems. Devise is for authentication, uses bcrypt. Pundit is for authorization.

Devise Installation Commands
```
gem 'devise' # in Gemfile
rails g devise:install
rails g devise User
rake db:migrate
# Add sign in/out helpers to application.html.erb
```


Code along. Adding Authentication to Rewsly.

First run `bundle install`. This makes sure that you have the proper versions of the gem.

Add to Gemfile. `gem 'devise'`. Run `bundle install` again to update gems.

When adding bigger gems. You need to install them with an installation process. `rails generate` will show you what generators you have. Run `rails generate devise:install`. This install devise. Devise will actually tell you what you need to do to set it up.

Find development.rb. Paste `config.action_mailer.default_url_options = { host: 'localhost', port:3000}`. This is from the first set of directions.

Check #2 in the directions. Past code from #3 into the application.html.erb. #4 is not important because we are not using Heroku. #5 is when you modify the CSS. Use `rails g devise:views` to allow you to change the defaults that devise sets.

Next, generate a model for devise. This will hold the user table. `rails generate devise user`.  Then `rake db:migrate`.

It is important to restart your rails server after loading a new gem. `rails s`. Rails doesn't automatically load the new methods from a gem.

Now, add login links to the homepage.html.erb.
```
<% if user_signed_in? %>
	<%= link_to 'Logout', destroy_user_session_path, method: :delete %> #must specify any method that is not Get. Ruby will never assume you want to delete something.

	#website content, such as the list of stories.

<% else %>
	<%= link_to 'Sign In', new_user_session_path %> 

	# say something like, welcome, please sign in to view the stories.

<% end %>
```

<em>4.7.15</em>

<strong>Model Associations</strong>. Models should only store data for one 'thing'. Associations allow us to link models.

An association using an <em>entity-relationship diagram</em>.
![Alt text](/users-urls2.png)

```
create_table "urls", force: true do |t|
  t.text     "link"
  t.string   "hash_code"
  t.integer  "user_id"
end

class Url < ActiveRecord::Base
  belongs_to :user
end

class User < ActiveRecord::Base
  has_many :urls
end
```

<strong>Keys</strong>. The primary key is the field that uniquely identifies each row of a table. In Rails this is <em>always "id"</em>. The foreign key identifies which row of another table it is associated with: user_id, post_id.
```
class User < ActiveRecord::Base
  has_many :urls
end

class Url < ActiveRecord::Base
  belongs_to :user
end

user.id         # user primary key
url.id          # url primary key

url.user_id     # user foreign key
```

Types of associations (in order of common usage.)
```
belongs_to
has_many
has_one
has_and_belongs_to_many
has_many :through
has_one :through
```

`belongs_to` is used wherever the foreign key is. Otherwise it might just be `has_one`.

His slide uses Crow's Foot Notation to show the connections. 

More info on associations can be found at the <a href="http://guides.rubyonrails.org/association_basics.html">Ruby on Rails site.</a> 

Opposite side of `belongs_to` is `has_many`.


<em>Possible Twitter Tables</em>
-Users
	:id
	:handle
	:email
	:full name
	:display name
	:location
	:mentioned count
	:retweet count
	:verified?
	:picture
-User Activity
	:user id
	:sign in
	:log out
-Tweets
	:user id (belongs_to)
	:content (has_one)
	:location (has_one)
	:hashtags (has_and_belongs_to_many)
	:updated at 
	:retweeted by (has_many)
	:favorited by (has_many)
	:flagged count
-Direct Messages
	:from user id
	:to user id
	:content
-Retweets
	:user id
	:tweet id
	:retweet user
-Followers (join table or join object)
	:user id (has_and_belongs_to_many)
	:followed by user id (has_and_belongs_to_many)
-Hashtags
	:hashtag id (has_one)
	:user id (has_many)
	:tweet id (has_many)
-Favorites

<em>Netflix Tables and Associations</em>
-Users
	has_many :reviews
	has_many :movies, through: :queue
-Movies
	has_many :reviews
	belongs_to :genres
-Genres
	has_many :movies 
-Reviews
	belongs_to :movie
	belongs_to :user
-Queue (join table)
	:user_id
	:movie_id

Model your final project and another website (hacker news) in a text file called 'associations_homework'.

<em>4.9.15</em>

























