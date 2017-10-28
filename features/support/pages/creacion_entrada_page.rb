class CreacionEntradaPage

	def initialize browser
		@browser = browser
	end

	def titulo= valor
		titulo_element.send_keys(valor)
	end

	def texto= valor
		texto_element.send_keys(valor)
	end

	def publicar
		espera = Selenium::WebDriver::Wait.new(timeout:10)
		espera.until do
			publicar_element.enabled?
		end
		publicar_element.click
	end

	### Locators
	def titulo_element
		@browser.find_element(:id, "title")
	end

	def texto_element
		@browser.find_element(:id, "content")		
	end

	def publicar_element
		@browser.find_element(:id, "publish")
	end



end