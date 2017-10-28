condicion = true

if condicion
  puts "la condicion es verdadera [true]"
end

puts "la condicion es verdadera [true]" if condicion


if not condicion # si es condicion es false
	puts "condicion es false"
end

unless condicion   # unless: a menos que
	puts "condicion es false"
end

puts "condicion es false" unless condicion
puts "condicion es false" if not condicion
puts "condicion es false" if !condicion

