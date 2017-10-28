class ListaEntradasPage

	def initialize browser
		@browser = browser
	end

	def visitar_pagina
		@browser.get "http://zonados.testingbairesdemo.com/automation/wp-admin/edit.php?"
	end

	def accion= accion_a_elegir
		# forma 1
		# @browser.find_element(:id, "bulk-action-selector-top").find_elements(:tag_name, "option").each do |option_element|
		# 	if option_element.text == accion_a_elegir
		# 		option_element.click
		# 		break
		# 	end
		# end

		# forma 2
		acciones = Selenium::WebDriver::Support::Select.new(@browser.find_element(:id, "bulk-action-selector-top"))
		acciones.select_by(:text, accion_a_elegir)
	end

	def aplicar
		@browser.find_element(:id, "doaction").click
	end

	def buscar_entrada_con_texto texto
		@browser.find_element(:id, "post-search-input").send_keys texto
		buscar_entradas
	end

	def buscar_entradas
		@browser.find_element(:id, "search-submit").click
	end

	def seleccionar_todos
		@browser.find_element(:id, "cb-select-all-1").click
	end

	def eliminar_entradas_con_titulo_que_contiene texto
		buscar_entrada_con_texto texto
		seleccionar_todos
		self.accion= "Mover a la papelera"
		# Hacemos scroll hastas el link de Añadir nueva porque eso
		# nos asegura que se vea el botón aplicar y por ende sea clickeable
		@browser.action.move_to(@browser.find_element(:link, "Añadir nueva")).perform
		self.aplicar
	end





end