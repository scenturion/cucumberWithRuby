class LoginPage

	def initialize browser
		@browser = browser
	end

	###### WEB ELEMENTS LOCATORS

	def usuario_element
		@browser.find_element(:id, "user_login")
	end

	def contraseña_element
		@browser.find_element(:id, "user_pass")
	end

	def acceder_element
		@browser.find_element(:id, "wp-submit")
	end

	def mensaje_error_element
		@browser.find_element(:id, "login_error")
	end


	#############

	def visitar_pagina
		@browser.get "http://zonados.testingbairesdemo.com/automation/wp-login.php"
	end

	# Escribe valor en el campo de texto de nombre de usuario
	def usuario= valor
		usuario_element.send_keys valor
	end

	def limpiar_usuario
		usuario_element.clear
	end

	def texto_usuario
		usuario_element.attribute("value")
	end


	# Escribe valor en el campo contraseña
	def contraseña= valor
		contraseña_element.send_keys valor
	end

	# Hace click en el botón acceder
	def acceder
		acceder_element.click
	end

	# Devuelve el texto del mensaje de error
	def mensaje_error
		mensaje_error_element.text
	end

	def login_con usuario, contraseña
		self.usuario= usuario
		self.contraseña= contraseña
		self.acceder
	end

end

# require 'selenium-webdriver'

# browser = Selenium::WebDriver.for :firefox

# @pagina = LoginPage.new browser

# @pagina.visitar_pagina

# # p @pagina

# @pagina.usuario= "alumnocurso"
# @pagina.contraseña= "aosicnaosidnaoisda"
# @pagina.acceder

# puts @pagina.mensaje_error
