# ruby-playground
Working with the Ruby programming language

#Datatypes
- Ruby includes 5 built-in classes for representing numbers
- All number objects in Ruby are instances of Numeric
- Floating point literals require a digit before the decimal point. (e.g. 0.1 is valid, .1 is not) 
- Single quoted strings may extend over multiple lines

#Other
Execute a line of code from command line
```
ruby -e "<line of code here>"
```
hashes
```
h = {
    :one => 1,
    :two => 2
}
//Ruby 1.9 syntax:
h = {one: 1, two:2}
//access
myvar = h[:one] 
//setting
h[:three] = 3
```

###Strings 
Double-quoted strings can include ruby expressions
```
print "#{value}:#{key}"
```
- Ruby strings are mutable
- Ruby will execute cli commands placed within backticks (similar to BASH)
```
puts "Todays date is `date`" #Ruby will pass date to the cli and it will execute it
```
- The ```<<``` operator will mutate the string on the left of the operator by appending the operand on the right
```
foo = "Hello"
puts foo #prints "Hello"
foo << " World"
puts foo #prints "Hello World"
```
- The ```*``` operator does a repeat

Inserting a string:
```
name = "foobar"
name[3,0] = "zy" # prints foozybar 
```
Replacing a string:
```
name = "foobar"
name[1,2] = "zy" # prints fzybar 
```

###Arrays
- Reading past the end of an aray in Ruby returns ```nil```. It **does not** throw an exception
- Rubys arrays are untyped and the elements that they contain need not be of the same type
Array constructor can take a block that specifies how to initialize each index
```
nums = Array.new(10) {|i| i * 10} # value of nums is  [0, 10, 20, 30, 40, 50, 60, 70, 80, 90]
```
- The ```+``` operator concatenates arrays
- The ```<<``` operator appends the right hand side to an array
- The ``` concat ``` method appends the elements of an array to the array
- The ``` - ``` operator removes the elements in on the left hand from the elements on the right hand side
- The ```&``` and ```|``` operators correspond to the intersect and union operations respectively
###Ranges
Ruby allows for literal Ranges: 
```
1..3  # 3 is included 
1...3 # 3 is excluded

# Checking for range membership
myRange = 1..15
myRange.include? 4 ## Returns true
myRange.include? 24 ## Returns false

```
### Symbols
Symbols are prefixed with ":"
```
:mySymbol # A symbol literal
```
The ```intern``` method will convert a string to a symbol
```
myString = "Hello"
newSymbol = myString.intern
```

#Misc
- Classes and modules are "open" and can be modified and extended at runtime
- Methods in ruby are allowed to return more than one value
- Ruby supports parallel assignment:
```
x, y = 1 , 2
a, b = b, a
x,y,z = [1,2,3]
```
Methods that nd with an equals sign are special because Ruby allows them to be invoked using assignment syntax
```
$ - prefix for global variable
@ - prefix for instance variable
@@ - prefix for class variable
```
Ruby allows for literal regex expressions ```/[Rr]uby/```

Only the values 'nil' and false evaluate to false in boolean expressions


##Objects and classes
### Creating an object
Use <className>.new(params)
```
s = Sequence.new(1,3,4)
###Constructor
```
When objects are constructed, ruby calls the ```initialize``` method defined in the class
```
def initialize(first, last)
    @first = first
    @last = last
end
```
### Object Order
Classes may define the ```<=>``` operator which will define an ordering.
The operator should return -1 if the left operand is less than the right operand, 0 if they are equal and 1 if the left operand is greater than the right operand.  If the 2 operands cannot be meaningfully compared, it should return nil.

=====
Splat - When an rvalue is preceded by an asterisk, it means that that value is an array (or an array-like object) and that its elements should each be rvalues.
```
x, y, z = 1, *[2,3] # Same as x,y,z = 1,2,3*
```

Flip-Flops
- The flip flop consists of two Boolean expressions joined with the .. operator, in the context of a condtional or loop.  It is false unless and until the lefthand expression evaluates to true.  Once that expression has become true, hte expression flips into a presistent true state until the righthand expression evaluates to true.
```
(1..10).each {|x| print x if x==3..x>=3} # prints "34"
```
=======
# rake 
```rake -P ``` show 

```rake -T ``` show tasks that have a desc specified

```rake <task-name> MY_ENV_VAR=HELLO ``` : pass environment variables 
