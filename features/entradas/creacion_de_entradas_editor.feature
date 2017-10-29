# language: es
@creacion @entradas @editor @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Característica: Creacion de entradas en el blog
	Dado que soy un usuarios con permisos de escritura
	Cuando escribo un post en el blog
	Quiero ver el post publicado

@exitosa @URGENCY:critical @JIRA++YZZ-100 @HIPTEST--9901
Escenario: Cracion de entrada exitosa como editor
	Dado que soy un usuario editor logueado
	Cuando ingreso una entrada
	Entonces debo ver la entrada publicada en el blog


