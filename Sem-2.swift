// Cree un nuevo playgrounds denominado: EjercicioCondicional1 que permita determinar el mayor, menor y valor intermedio entre tres números. (Utilice IF-ELSE)

// Hallando el menor, mayor e intermedio entre 3 numeros
var n1: Int = 10
var n2: Int = 60
var n3: Int = 30

var mensaje: String = ""

var mayor: Int = 0
var intermedio: Int = 0
var menor: Int = 0

// Determinamos usando if and else

if n1 >= n2 && n1 >= n3 {
  mayor = n1
  intermedio = max(n2, n3)
  menor = min(n2, n3)
} else if n2 >= n1 && n2 >= n3 {
  mayor = n2
  intermedio = max(n1 , n3)
  menor = min(n1, n3)
} else {
  mayor = n3
  intermedio = max(n1, n2)
  menor = min(n1, n2)
}

print("Numero mayor: \(mayor)")
print("Numero intermedio: \(intermedio)")
print("Numero menor: \(menor)")


// EXAMPLE:

struct Stack<Element> {
  var items = [Element]()
  mutating func push(_ item: Element) {
      items.append(item)
  }
  mutating func pop() -> Element {
      return items.removeLast()
  }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
print(stackOfStrings.pop())
print(stackOfStrings.pop())