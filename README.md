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
	<li>integer or fixnum - which are whole numbers. <code>1</code> and  `2`.</li>
	<li>floats - numbers with decimals.  `1.334` and  `2.0`.</li>
	<li>string - a line of text. `'this is a string'`.</li>
	<li>boolean - a statement that resolves in `true` or `false`.</li>
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
































