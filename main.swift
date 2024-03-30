for _ in 1...5 {
    for _ in 1...5 {
        print("*", terminator: "")
    }
    print("")
}

for i in  0...5 {
    for j in 0..<(2 * 5 - 1) {
        if i == 5 - 1 || j == 5 - 1 - i || j == 5 - 1 + i {
            print("*", terminator: "")
        } else {
            print(" ", terminator: "")
        }
    }
    print("")
}

func imprimirTriangulo(_ altura: Int) {
  for i in 0..<altura {
      for j in 0..<(2 * altura - 1) {
          if i == altura - 1 || j == altura - 1 - i || j == altura - 1 + i {
              print("*", terminator: "")
          } else {
              print(" ", terminator: "")
          }
      }
      print()
  }
}

// Llamamos a la función para imprimir un triángulo con altura 5
imprimirTriangulo(5)

// Método para división con validación
  func division(_ num1: Int, _ num2: Int) -> Double? {
      guard num2 != 0 else {
          print("No se puede dividir entre cero.")
          return nil
      }
      return Double(num1) / Double(num2)
  }

division(20, 20)
