#!/usr/bin/ruby
#This example opens the String class to provide a 'flip' method which is exactly 
#like 'reverse'
class String
    def flip
        rev = ''
        l =  self.chars
        l.length.downto(0) do |x| 
            rev << l[x].to_s
        end
        rev
    end
end

test = "Marcos"
puts test.flip

