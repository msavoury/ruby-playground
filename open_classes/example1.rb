#!/usr/bin/ruby

#An example of opening classes in ruby
#

class String 
    def exaggerate
        "#{self.to_s}!"
    end
end

puts "this is a string"
puts "this is a string".exaggerate
