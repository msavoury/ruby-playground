#!/usr/bin/ruby
#
# This is an example including a module within a class

require('./Shooter.rb')

class Innocent
    include Shooter
end

class NoShoot
end


puts "start"
person = Innocent.new()
person.shoot # shoot isn't defined in Innocent, it's defined in the Shooter module
person2 = NoShoot.new()
person2.shoot rescue nil #causes an error, module wasn't included in that class
