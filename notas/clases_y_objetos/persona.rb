class Persona

	attr_accessor :nombre, :genero, :documento
	
	def initialize nombre, genero, documento
		@nombre = nombre
		@genero = genero
		@documento = documento
	end
	
	# Getter (devulve el valor) => reemplazado por attr_accessor
	# def nombre
	# 	@nombre
	# end

	# Setter (modifica el valor)  => reemplazado por attr_accessor
	# def nombre= nuevo_valor
	# 	@nombre = nuevo_valor
	# end

	def es_hombre?
		# if @genero == "m"
		# 	true
		# else
		# 	false
		# end
		@genero == "m"
	end

	def es_mujer?
		# if @genero == "f"
		# 	true
		# else
		# 	false
		# end
		# !es_hombre?
		@genero == "f"
	end

	def saludo
		if es_hombre?
			puts "Bienvenido #{nombre}"
		elsif es_mujer?
			puts "Bienvenida #{nombre}"
		else
			puts "Hola #{nombre}"
		end
	end

end


persona_1 = Persona.new("Juan","m",123456789)
# puts "Hola #{persona_1.nombre}"
# p persona_1.methods


# nombre_de_persona_1 = persona_1.nombre
# puts "El nombre de persona_1 es #{nombre_de_persona_1}"


# if persona_1.es_hombre?
# 	puts "Bienvenido #{persona_1.nombre}"
# elsif persona_1.es_mujer?
# 	puts "Bienvenida #{persona_1.nombre}"
# else
# 	puts "Hola #{persona_1.nombre}"
# end

persona_1.saludo

persona_1.nombre= "Pedro"

persona_1.saludo

