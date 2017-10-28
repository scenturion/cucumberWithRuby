# Dado(/^que soy un usuario autor logueado$/) do
  
# end

Dado(/^que soy un usuario (editor|autor) logueado$/) do |tipo_usuario|
  @usuario = Usuario.new(tipo_usuario)
  @pagina = LoginPage.new($browser)
  @pagina.visitar_pagina
  @pagina.login_con @usuario.usuario, @usuario.contraseña
  @pagina = EscritorioPage.new($browser)
end

Cuando(/^ingreso una entrada$/) do
  @titulo = "Titulo #{@usuario.usuario} #{$marca_de_tiempo}"
  @texto = "Texto de la entrada #{@usuario.usuario}"
  @pagina.nuevo
  @pagina = CreacionEntradaPage.new($browser)
  @pagina.titulo= @titulo
  @pagina.texto= @texto
  @pagina.publicar
end

Entonces(/^debo ver la entrada publicada en el blog$/) do
  # Aqui definirán la pagina de la home que tendrá métodos de la home
  # en este caso el metodo .existe_entrada_con_titulo? para lograr el assertion
  @pagina = HomePage.new($browser)
  @pagina.visitar_pagina
  fail "No se encontró la entrada con titulo #{@titulo}" unless @pagina.existe_entrada_con_titulo? @titulo
end

