class HomePage

	def initialize browser
		@browser = browser
	end

	def visitar_pagina
		@browser.get "http://zonados.testingbairesdemo.com/automation/"
	end

	def existe_entrada_con_titulo? texto
		
		# begin
		# 	@browser.find_element(:link, texto)
		# 	true
		# rescue
		# 	false
		# end

		titulos = @browser.find_elements(:class, "entry-title").map do |titulo|
			titulo.text
		end
		titulos.include? texto
	end

end