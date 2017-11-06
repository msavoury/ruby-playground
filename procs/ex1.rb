#!/usr/bin/ruby

#Using the Proc constructor
double = Proc.new {|y| y * 2}
puts double.call(5)

#Using the lambda keyword
add2 = lambda {|x| x + 2}
puts add2.call(11)

#Using the -> operator
subtract4 = ->(x) { x - 4}
puts subtract4.call(40)
