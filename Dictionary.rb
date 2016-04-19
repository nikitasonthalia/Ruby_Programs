
# -----------------------------------------------------------
# =>  Question 4

# In this I have created a dictionary class and methods to show 
# user the pincode of city which user provide. The loop will run 
# until user want to know the pincode, they can provide city untl 
# they want.

#---------------------------------------------------------------------

class Screen
 	def cls  #Define a method that clears the display area
   		 puts ("\n" * 25)  #Scroll the screen 25 times
	end
end

class Dictionary 			#Define class and methods to show the pincode
	$city = Hash.new ("city")
	def initialize         #intilize the hash of cityname and pincode

		
		$city ={"santaclara" => 94059, "sunnyvale"=>97494,"sanjose"=>95853}
	end
	#puts city["santaclara"]
	def userchoice						# method to ask user want to continue
		puts "Do you want to pass city name? (y/n)"
		ans=STDIN.gets
		ans.chomp!
	end

	def displayCity					#method to disply the list of cityname
		puts $city.keys
	end
	def getCity						#method to get cityname
		puts " Type the city?"
		cname=STDIN.gets
		cname.chomp!

		
	end

	def displayareaCode(cname)		#method to dispaly pincode of userentered cityname
		$city[cname]
		
	end

end

d=Dictionary.new
s=Screen.new
choice=d.userchoice
while choice=='y'

	s.cls
	d.displayCity
	cname=d.getCity
	areacode=d.displayareaCode(cname)
	puts "The area code is : #{areacode}  (press Enter)"
	t=STDIN.gets

	s.cls


	choice=d.userchoice

	if(choice=='n')
		puts " Thanks for using this! See you next time! "
	end

end


#---------------------------output---------------------------------

# Do you want to pass city name? (y/n)
# y




# santaclara
# sunnyvale
# sanjose

# Type the city?
# santaclara
# The area code is : 94059  (press Enter)





# Do you want to pass city name? (y/n)
# n


# Thanks for using this! See you next time! 


