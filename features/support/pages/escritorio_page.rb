class EscritorioPage

	def initialize browser
		@browser = browser
	end

	def nuevo
		@browser.find_element(:link_text, "Nuevo").click
	end

	def es_escritorio?
		@browser.title.start_with? "Escritorio"
	end

end