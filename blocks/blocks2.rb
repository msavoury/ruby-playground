#!/usr/bin/ruby

def use_a_block
    result = 0
    result = yield if block_given?
    result
end

puts use_a_block
puts use_a_block {"what"}
