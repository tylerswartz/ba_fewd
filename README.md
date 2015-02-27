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
	<li>If you're not sure, do reasearch or ask peers.</li>
	<li>Once you understand it, then you write your code.</li>
</ol>

Stop -> Think -> Code

Git commands to add homework from the command line.
Go to bewd_sf_8_homework/tylerswartz
```
Git add . -A
Git commit -m"msg"
Git push
```
Then go to github and press the pull request button.

<em>2.26.15</em>

Programming. We are teaching a computer to think like us.

<strong>Variables</strong> allow you to save a data value for use later. This is called assigning or setting a variable. `name = "steven"`. In this case `name` is a variable that is holding the value `steven`.

ruby gem pry allows you to do ruby in the console. Good for practicing basic ruby commands. Just type `pry`.

Data Types
a) integer or fixnum - which are whole numbers. `1` and `2`.
b) floats - numbers with decimals. `1.334` and `2.0`.
c) string - a line of text. `'this is a string'`.
d) boolean - a statement that resolves in `true` or `false`.

Ruby does not automatically convert data types. Use `.to_s` to make a number into a string or `.to_i` to make a string into a integer.

<strong>Methods</strong> are a way to store a block of code, such as a formula and call it at a later time. THey are like math equations. Methods and funcitons are often used interchangeably in Ruby. They have a name, parameters and return values. Methods in Ruby <em>always</em> have return values.

Example method:
```
def multiply(x,y)
	x + y
end
```
Then you call that method and pass in the variables, `multiply(7,2)` returns `14`.


















