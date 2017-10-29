# language: es
@login
Característica: Login al backoffice

	Como un usuario del backoffice
	Cuando ingreso mis credenciales
	Quiero poder acceder al escritorio del backoffice

# Este es un comentario
Antecedentes: pagina de login
	Dado que estoy en la página de login

@exitoso @editor @tag_1 @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Escenario: Login exitoso como editor del blog (primera persona)
  # Dado que estoy en la página de login
  Y ingreso mis credenciales de editor
  Cuando presiono el boton acceder
  Entonces debo aparecer en el escritorio del backoffice

@exitoso @editor @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Escenario: Login exitoso como editor del blog (tercera persona)
	# Dado que está en la página de login
	Y ingresa sus credenciales de editor
	Cuando presiona el boton acceder
	Entonces debe aparecer en el escritorio del backoffice
	
@exitoso @editor @tag_2 @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Escenario: Login exitoso como editor del blog (modo imperativo)
	# Dado que está en la página de login
	Y ingresa 'alumnocurso' en el campo usuario
	Y ingresa 'pass1234' en el campo contraseña
	Cuando presiona el boton acceder
	Entonces debe aparecer en el escritorio del backoffice

@insatisfactorio @mensajes_de_error @error @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Esquema del escenario: Mensajes de error ante login instisfactorio
	# Dado que está en la página de login
	Y ingresa '<usuario>' en el campo usuario
	Y ingresa '<contraseña>' en el campo contraseña
	Cuando presiona el boton acceder
	Entonces el mensaje de error debe decir '<mensaje>'

Ejemplos:
	|usuario    |contraseña |mensaje                                                       |
	|           |asijdoaisjd|ERROR: El campo Nombre de usuario está vacío.                 |
	|sdasd      |asdasdasd  |ERROR: Nombre de usuario inválido. ¿Has perdido tu contraseña?|
	|alumnocurso|           |ERROR: El campo contraseña está vacío.                        |
	|alumnocurso|alskdmalsd |ERROR: La contraseña que has introducido para el usuario alumnocurso es incorrecta. ¿Has perdido tu contraseña?|


@editor @exitoso @wip @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Escenario: Login exitoso como editor del blog utilizando tablas en los steps
	# Dado que está en la página de login
	Y ingresa las siguientes credenciales
	  |usuario    |contraseña|
	  |alumnocurso|pass1234 |
	Cuando presiona el boton acceder
	Entonces debe aparecer en el escritorio del backoffice






