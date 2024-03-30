// PRACTICANDO DESARROLLO DE LABORATORIO

var greeting = "hello, playground"

greeting = String(10)

//print(greeting)


// Variable immutable

let fechaNacimiento = "2003-07-07"

var alumnos = ["Juan", "Jose"]

alumnos.append("Pepe")
//print(alumnos)

// Tipo de dato numero enterno y decimal

var edad: Int = 20

var peso: Float = 62.50

//print(edad)

//print(peso)

let esMayorEdad: Bool

//print(esMayorEdad)

// Funcion que permite comprobar si un numero es par o impar

func esPar(numero: Int) -> Bool {
  return numero.isMultiple(of: 2)
}
//print("Comprobando: \(esPar(numero: 4))")

// Funcionq para calcular si es mayor de edad
func esMayorEdad(edad: Int) -> Bool {
  return edad >= 18
}

//print("Mayor: \(esMayorEdad(edad: 20))")

func calcularLadoCuadrado(_ lado: Float) -> Float {
  return lado * lado
}

//print("Area[] : \(calcularLadoCuadrado(2))")


//for alumno in alumnos {
//  print(alumno)
//}

//alumnos.forEach {alumno in
//    print(alumno)
//}

let nombre = "Jhon"
let apellido = "Churivanti Alva"

let celular = 913740129

print("Mostrando datos: \(nombre) -> \(apellido)")
print("Mostrando dato: \(nombre) -> \(apellido) " + String(celular))