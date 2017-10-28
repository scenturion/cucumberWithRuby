# El método map de Arrays
# Lo que hace es devolver un array de la misma cantidad
# de elementos que contiene el array que se recorre
# donde en cada posición, guardará la última expresión evaluada
# en cada iteración

array = [1,2,3,4,5,6,7,8,9]


array.map do |nro|

	nro.even? # devuelve true si el nro es par
end

#=> [false,true,false,true,false,true,false,true,false]