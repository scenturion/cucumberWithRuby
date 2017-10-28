
print "Ingrese una opcion [s/n]:"
opcion = gets.chop

while not ["s","n"].include? opcion.downcase
	print "Ingrese una opcion [s/n]:"
	opcion = gets.chop
end


begin
	print "Ingrese una opcion [s/n]:"
	opcion = gets.chop
end while not ["s","n"].include? opcion.downcase


begin
	print "Ingrese una opcion [s/n]:"
	opcion = gets.chop
end until ["s","n"].include? opcion.downcase


while a < 100

	condicion
end