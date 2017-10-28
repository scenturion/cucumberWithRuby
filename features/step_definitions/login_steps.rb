Entonces(/^que est(?:oy|á) en la p(?:á|a)gina de login$/) do
  @pagina = LoginPage.new($browser)
  @pagina.visitar_pagina
end

Dado(/^ingres(?:o|a) (?:mis|sus) credenciales de editor$/) do
  @pagina.usuario= "alumnocurso"
  @pagina.contraseña= "pass1234"
end

Dado(/^ingresa las siguientes credenciales$/) do |table|
	datos_usuario = table.hashes.first
  @pagina.usuario= datos_usuario["usuario"]
  @pagina.contraseña= datos_usuario["contraseña"]
end

Cuando(/^presion(?:o|a) el bot(?:o|ó)n acceder$/) do
  @pagina.acceder
end

Entonces(/^deb(?:o|e) aparecer en el escritorio del backoffice$/) do
	@pagina = EscritorioPage.new($browser)
  fail "No se encontró la página del escritorio" unless @pagina.es_escritorio?
end

Entonces(/^el mensaje de error debe decir '(.*)'$/) do |msj_esperado|
	msj_obtenido = @pagina.mensaje_error
	fail "No se encontró el mensaje.
		Se esperaba: #{msj_esperado}
		Se obtuvo: #{msj_obtenido}" unless msj_obtenido == msj_esperado
end




############### capturan valor

Dado(/^ingresa '(.*)' en el campo usuario$/) do |valor|
	@pagina.usuario= valor
end

Dado(/^ingresa '(.*)' en el campo contraseña$/) do |valor|
	@pagina.contraseña= valor
end



