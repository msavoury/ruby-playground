#!/usr/bin/ruby

# In this example we use the 'method' keyword to detach the method form the object
# and store it in variable so that we can call it later.  Note that the method's scope is still bound to the object in which it was defined

class Alpha
    def initialize(num)
        @num = num
    end

    def show_num
        puts "my num is #{@num}"
    end
end

a1 = Alpha.new(11)
a2 = Alpha.new(30)

m1 = a1.method :show_num
m2 = a2.method :show_num

m1.call
m2.call
