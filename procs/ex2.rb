#!/usr/bin/ruby

#you can pass a proc to a method that takes a block, by using the '&' operator

def take_block(a) 
    if block_given?
        yield(a) 
    else 
        a
    end
end

puts take_block(4)
puts take_block(4) {|x| x + 2}

proc1 = ->(input){input * 4}
puts take_block(6, &proc1)
