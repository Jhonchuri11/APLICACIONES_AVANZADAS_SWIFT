// Cuando ocupamos valor nulos, es necesario al momento de declarar una variable y el tipo el uso del ? signo de interrogacion, sin eso no estaria mostrando un error.

var edad: Int? = nil
edad = 20


// OTRO EJEMPLO DE OPcionales desenvueltos explicitamente

let hobby: String!

hobby = String("Play")
//print(hobby)


// Para el caso de mostrar el valor, esto estaria mostrando o envuelto ( wrapped ) si no usamos !

// Example
// print(edad) -> RESULT:  Optional(20)

// Contrario si usamos ! estamos haciendo un unwrapping, esto estaria desenvuelto y solo recogeria el valor.

// Example 2
// print(edad!) -> RESULT: 20
//print(edad!)

// Ejercicio 2

/*
Declara una variable "mensaje" como un String opcional. Usando el if let escribe código que haga que si es distinta a nil la imprima, pero si es nil imprima "está vacía". Ten en cuenta que en Swift las llaves son obligatorias siempre en los condicionales aunque solo haya una instrucción.
*/

// Prinero definimos una variable String opcional
var mensaje: String? = nil

mensaje = "Hola JHON"

// Con el uso de if let podemos validar si el valor es nulo o no
// Si el valor es nulo mostrara un mensaje de "Esta vacio", caso contrario muestra le mensaje que lleva

//if let mensaje = mensaje {
  //print("\(mensaje)")
//} else {
  //print("Esta vacio")
//}


// Control de flujo
/*
Cambia este ejemplo por un bucle for en el que se itere usando una variable i con la posición del elemento en la lista, lista[i]. El número de elementos de la lista lo puedes obtener en su propiedad count

*/

var bizcocho = ["huevos", "leche", "harina"]

for i in bizcocho {
  print(i)
}

func saludo(name: String) -> String 
{
  return "Hola \(name)"

}

saludo(name: "Jhon")

func generarSaludo(nombre:String)->String {
  return "Hola \(nombre)"
}

func imprimirSaludo(nombre:String) {
  print("Hola \(nombre)")
}

generarSaludo(nombre:"Pepe")