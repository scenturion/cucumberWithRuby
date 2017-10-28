
variable = "uno"


case variable
when "uno","1",1
	puts "la variable es uno"
	# ....
	# ....
	# ....
when "dos"
	puts "la variable es dos"
when "tres"
	puts "la variable es tres"
when /\d+/
	puts "es el número #{variable}"
else
	puts "la variable es #{varible}"
end
