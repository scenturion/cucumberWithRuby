class Usuario

	USUARIOS = {
		"autor" => {
			"usuario" => "alumnocurso",
			"contraseña" => "pass1234"
		},
		"editor" => {
			"usuario" => "alumnocurso",
			"contraseña" => "pass1234"
		}
	}


	def initialize type
		@type = type
	end

	def usuario
		USUARIOS[@type]["usuario"]
	end

	def contraseña
		USUARIOS[@type]["contraseña"]
	end

end