#----------------------------------------------------------------------
# => Question 5

# In this I read the json file and convert that in hash object, than get 
# the user email from user and check their permission in that file and return 
# it. create an hash object with user enmail id and thier permission and write it 
# in json file..

#------------------------------------------------------------------------



require 'json'

file =File.read('/Users/nikitasonthalia/study/rubyonrails/userpermission.json')  # read the json file 
hash=JSON.parse(file)			#convert it in the hash object

puts "Enter your enmail: "		#read the email from user

email=STDIN.gets
email.chomp!


permission= hash[email]		

if permission.to_s==""			#check if permission is their
	#hash[email]="754"
	#File.open("/Users/nikitasonthalia/study/rubyonrails/userpermission.json","a") do |f|
  	#f.write(hash.to_json)
	puts" user not exit:" 
else
	puts "#{permission}"
end

tempHash = {
    "user1" => "123",
    "user2" => "234"
}
File.open("/Users/nikitasonthalia/study/rubyonrails/userpermission2.json","a") do |f|  #  open file in append mode
  f.write(tempHash.to_json)				#write user in json file

end


#-------------------------------output-------------------------------------


# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ ruby JSONFile.rb
# Enter your enmail: 
# nikita@gmail.com
#  user not exit:
# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ ruby JSONFile.rb
# Enter your enmail: 
# abc@mail.com
# read



