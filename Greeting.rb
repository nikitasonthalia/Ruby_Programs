#---------------
# => Question 1 
# Static Greeting in which I Create a method for greeting the user!

#---------------
class Greeting
 	def greeting(name)
 		$name = "sue" 
 		puts "Why Hi There #{name}, my name is #$name!"
 	end
 end

g=Greeting.new


name=ARGV[0]
#name.chomp!
g.greeting(name)
#g.greeting("bob")



#-------------------output-----------------

# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ ruby Greeting.rb nikita
# Why Hi There nikita, my name is sue!
# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ 



#--------------------interactive------------

# 2.3.0 :002 > $name = "sue" 
#  => "sue" 
# 2.3.0 :003 > puts "Why Hi There bob, my name is #$name!"
# Why Hi There bob, my name is sue!
