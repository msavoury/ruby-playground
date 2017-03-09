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
Ruby allows for literal Ranges: 
```
1..3  // 3 is included 
1...3 // 3 is excluded
```


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

