#!/usr/bin/ruby

var1 = "Marcos"

class Alpha
    puts "Inside Alpha"
    #puts "var1 is #{var1}" #This causes an error, it's undefined
end

    puts "var1 is #{var1}" #This is fine

class Beta
    puts "Inside Beta"
    # puts "var1 is #{var1}" #Will also cause an error
end

