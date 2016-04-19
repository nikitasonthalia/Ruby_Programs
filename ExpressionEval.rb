#----------------------------------------------------------
# =>  Question 3 

#  In this I have create a method for evaluating the user 
#  entered expression 
#  --------------------------------------------------------



class ExpressionEval
	
	
	def evalute1(exp)				# method evalute the experession taken the Expression as argument
		value = Array.new(10)
		op = Array.new(10)
		token = exp.split ""
		i=0
		j=-1
		token.each do |t|			# evalute block of expresion
			if t.match(/\d/)		# check if value is digit or not
				value[i]=t
				i+=1
			end
			if t.match(/([*+\-\\\=%^><])/)	# check if value is oprator
				
				while j>=0
					#puts "dfgg"
					val=eval1(value[i-2],value[i-1],op[j])
					i=i-2
					value[i]=val
					#puts "value[i]"
					#puts value[i]
					#puts t
					i+=1
					j-=1
				end
				j+=1
				op[j]=t
				
			end
		end

		while j>=0
			#puts "dfgg"
			val=eval1(value[i-2],value[i-1],op[j])
			i=i-2
			value[i]=val
			i+=1
			j-=1
		end

		value[i-1]

	end

	def eval1(no1,no2,op)  			#evaluate the and reture the result
		#puts "no1 #{no1}"
		#puts "no2 #{no2}"
		case op
			when "*"
				no1.to_i * no2.to_i

			when "/"
				no1.to_i / no2.to_i

			when "-"
				no1.to_i - no2.to_i

			when "+"
				no1.to_i + no2.to_i

			when "%"
				no1.to_i % no2.to_i
			when ">"
				no1 > no2
			when "<"
				no1>no2
			when  "="
				(no1==no2)?true:false
					
		end
	end
end

puts "Enter the expresion?"
ans=STDIN.gets
ans.chomp!
if ans!=""
	ex1=ExpressionEval.new
	puts ex1.evalute1(ans)
end



#------------------output-------------------------------
# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ ruby ExpressionEval.rb
# Enter the expresion?
# 4+3
# 7
# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ ruby ExpressionEval.rb
# Enter the expresion?
# 9*2
# 18
# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ ruby ExpressionEval.rb
# Enter the expresion?
# 9/2
# 4
# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ ruby ExpressionEval.rb
# Enter the expresion?
# 9%2
# 1
# Nikitas-MacBook-Pro:rubyonrails nikitasonthalia$ ruby ExpressionEval.rb
# Enter the expresion?
# 2>3
# false





