#!/usr/bin/ruby

def use_a_block_with_params
    result = 2
    result = yield(result) if block_given?
    result
end

puts use_a_block_with_params
puts use_a_block_with_params {|x| x + 3}
puts use_a_block_with_params {|x| x * 3}
