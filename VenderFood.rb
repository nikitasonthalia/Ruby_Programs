#---------------------------------------------------------------------------------

# => Question 2
# 
# In this I have create one parent class and three child class. 
# parent class has instance variable and methods which child class is overrriding.

#----------------------------------------------------------------------------------

class VenderFood  # Parent class

	 attr_accessor :name, :cost, :venNo, :supply  # instance variable
	 @@totalcost=0   							 #  Class variable
	 def initialize(name,cost,venNo)			#constructor for intialize the instance variable
		@name=name
	 	@cost=cost
	 	@venNo=venNo
	 	@supply=0 

	 
	 end

	 def updateSupply(no)			# methed which update the supplies for the object
	 	@supply= @supply+no.to_i
	 end

	 def show_supply				# method which show the current supplies 

	 	self.supply
	 	
	 end

	 def saleUpdater				# method for upadte the total cost of the vent machine
	 	@@totalcost=@@totalcost+self.cost
	 end

	 def vend(price)				# method to process vend 
	 	if self.supply > 0 && price>=self.cost
	 		self.supply=self.supply-1
	 		#@@totalcost=@@totalcost+self.cost
	 		saleUpdater
	 		price=price-cost
	 		price
	 	# 	puts "You will get #{price} cents"
	 	# else
	 	# 	puts "Out of Stock or Less pay."
	 	end
	 	
	 end

	 

	 def to_s				# override to_string method

	 	"This is a VenderFood."
	 	
	 end

	 def self.sales_Info	# Class method to show total sales
	 	@@totalcost
	 end


end

class CandyBar < VenderFood

	def initialize(name,cost,venNo)
		#self.name=name
	 	#self.cost=cost
	 	#self.venNo=venNo
	 	#self.supply=0
		super(name,cost,venNo)
		
	end

	# def sales_Info
	# 	puts "{self.name} item tolal income is {self.totalcost} " 
		
	# end
	def vend(price)					# override the parent vend method
		price = super(price).to_s
		if price != ""
			puts "You will get #{price} cents for #{name}."
	 	else
	 		puts "Out of Stock or Less pay for #{name}."

	 	end
		 
	end

	def to_s
		super + " And this is a #{name} CandyBar object."
	 	
	 end
end

class Cracker < VenderFood
	def initialize(name,cost,venNo)
		super(name,cost,venNo)
		
	end
	# def sales_Info
	# 	puts "{self.name} item tolal income is {self.totalcost} " 
		
	# end
	def vend(price)				# override the parent vend method
		price = super(price).to_s
		if price != ""
			puts "You will get #{price} cents for #{name}."
	 	else
	 		puts "Out of Stock or Less pay for #{name}."

	 	end
		 
	end
	def to_s
		super + " And this is a #{name} Cracker object."
	 	
	 end
end


class Chips < VenderFood
	def initialize(name,cost,venNo)
		super(name,cost,venNo)
		
	end
	# def sales_Info
	# 	puts "{self.name} item tolal income is {self.totalcost} " 
		
	# end
	def vend(price)					# override the parent vend method
		price = super(price).to_s
		if price != ""
			puts "You will get #{price} cents for #{name}."
	 	else
	 		puts "Out of Stock or Less pay for #{name}."

	 	end
		 
	end

	def to_s
		super + " And this is a #{name} Chips object."
	 	
	 end
end


lovely=CandyBar.new("lovely",50,0011)
lays=Chips.new("lays",120,0022)
cracker1=Cracker.new("Cracker1",100,0033)

totalcost1=VenderFood.new("",0,0)

puts lovely
puts "Enter the supply for lovely CandyBar?"
ans=STDIN.gets
ans.chomp!
lovely.updateSupply(ans)
lovely.vend(100)
lovely.vend(100)
puts "Tolal no of supplys left are " + lovely.show_supply.to_s

puts lays

puts "Enter the supply for lays Chips?"
ans=STDIN.gets
ans.chomp!
lays.updateSupply(ans)
lays.vend(130)
lays.vend(150)
puts "Tolal no of supplys left are " + lays.show_supply.to_s

puts cracker1

puts "Enter the supply for cracker1?"
ans=STDIN.gets
ans.chomp!
cracker1.updateSupply(ans)
cracker1.vend(100)
cracker1.vend(120)
puts "Tolal no of supplys left are " + cracker1.show_supply.to_s

puts "The cost earn is " + VenderFood.sales_Info.to_s



#-------------output---------------------

# This is a VenderFood. And this is a lovely CandyBar object.
# Enter the supply for lovely CandyBar?
# 10
# You will get 50 cents for lovely.
# You will get 50 cents for lovely.
# Tolal no of supplys left are 8
# This is a VenderFood. And this is a lays Chips object.
# Enter the supply for lays Chips?
# 24
# You will get 10 cents for lays.
# You will get 30 cents for lays.
# Tolal no of supplys left are 22
# This is a VenderFood. And this is a Cracker1 Cracker object.
# Enter the supply for cracker1?
# 22
# You will get 0 cents for Cracker1.
# You will get 20 cents for Cracker1.
# Tolal no of supplys left are 20
# The cost earn is 540



