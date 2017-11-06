#!/usr/bin/ruby

init = 12

class Alpha

    def initialize(num = 0)
        @val = num
    end

    def val
        @val
    end

    private 

    def val_squared 
        @val * @val
    end
end

a1 = Alpha.new(11)
a2 = Alpha.new(5)
a3 = Alpha.new(8)

puts a1.val
puts a2.val
puts a3.val

# puts a1.val_squared #this will cause an error since val_squared is private

a1.instance_eval do 
   puts val_squared #allows you to call private methods
   @val = 30 #allows you to acces private vars
end

a2.instance_eval do 
   puts val_squared #allows you to call private methods
   @val = -5 #allows you to acces private vars
end

a3.instance_eval do 
   puts val_squared #allows you to call private methods
   @val = init #still have access to outer scope since its a block
end

puts a1.val
puts a2.val
puts a3.val
