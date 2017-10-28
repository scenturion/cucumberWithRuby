Before do
  
  mobile_emulation = { "deviceName" => "Nexus 5" }
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
    "chromeOptions" => { "mobileEmulation" => mobile_emulation })
  $browser ||= Selenium::WebDriver.for :chrome, desired_capabilities: caps
  #$browser ||= Selenium::WebDriver.for :firefox, desired_capabilities: caps
end

After do |escenario|
	
	# if escenario.failed?

    if $browser
      screenshot = $browser.screenshot_as(:png)
      encoded_img = Base64.encode64(screenshot)
      embed("data:image/png;base64,#{encoded_img}",'image/png')
    end
  # end

  # 
  $browser.manage.delete_all_cookies
end

at_exit do
  # Actions after all scenarios execution (the end of entire execution)
  # if $browser
  # 	$browser.close
  # end

  @pagina = LoginPage.new($browser)
  @pagina.visitar_pagina
  @pagina.login_con "alumnocurso", "pass1234"
  @pagina = ListaEntradasPage.new($browser)
  @pagina.visitar_pagina
  @pagina.eliminar_entradas_con_titulo_que_contiene "alumnocurso"


  $browser.close if $browser

  $browser.close if $browser

end

