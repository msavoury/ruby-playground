#!/usr/bin/ruby

def take_a_block
    puts 'you provided a block' if block_given?
    puts 'you did not provided a block' unless block_given?
end

take_a_block
take_a_block {puts "hwat"}
