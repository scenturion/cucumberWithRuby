un_hash = {
	"clave" => "valor",
	"clave2" => "valor2"
}

english = {
	"rojo" => "red",
	"verde" => "green",
	"amarillo" => "yellow"
}

english["rojo"]
# => "red"

english.each_pair do |key, value|
	puts "la key es: #{key} y el value es #{value}"
end

# para guardar un valor
english.store("azul","blue")

english["negro"]= "black"

español = {
	grey:"gris",
	black:"negro"
}

metodos_arrays = {
	:metodo => "un string de argumento"
}

# array_1.send(:metodo, "un string de argumento" )


