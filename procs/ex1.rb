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

#the & operator
def use_block(param1, &block) 
    puts block.class if block_given?
    param1 + 1
end

def turn_block_to_proc(&block)
    block
end

use_block(1)
use_block(1){|x| x + 1}

b = turn_block_to_proc do |y|
    y + 12
end

puts b.call(24)
