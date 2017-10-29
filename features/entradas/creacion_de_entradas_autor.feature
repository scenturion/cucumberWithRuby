# language: es
@creacion @entradas @autor @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Característica: Creacion de entradas en el blog como autor
	Dado que soy un usuarios con permisos de escritura
	Cuando escribo un post en el blog
	Quiero ver el post publicado

# modo declarativo
@exitosa @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Escenario: Cracion de entrada exitosa como autor
	Dado que soy un usuario autor logueado
	Cuando ingreso una entrada
	Entonces debo ver la entrada publicada en el blog

