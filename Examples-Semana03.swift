func greeting(name: String, lastname: String) -> String {
  print("Hola \(name) \(lastname)")
  // return
  return "Hola \(name) \(lastname)"
}

greeting(name: "Linder", lastname: "Hassinger")

func greeting2(_ name: String, _ lastname: String) -> String {
  print("Hola \(name) \(lastname)")
  // return
  return "Hola \(name) \(lastname)"
}

greeting2("Linder", "Hassinger")


class Person {
  // Atributos
  var name: String = ""
  var lastname: String = ""
  var documentNumber: String = ""
  var phoneNumber: String = ""
  var address: String = ""
  var isLive: Bool = true
  var email: String = ""

  // Constructor vacio
  init() {}

  // Constructor con 2 parametros
  init(name: String, lastname: String) {
      self.name = name
      self.lastname = lastname
  }

  // Constructor con todos los parametros necesarios
  init(name: String, lastname: String, documentNumber: String, phoneNumber: String, address: String, isLive: Bool, email: String) {
      self.name = name
      self.lastname = lastname
      self.documentNumber = documentNumber
      self.phoneNumber = phoneNumber
      self.address = address
      self.isLive = isLive
      self.email = email
  }

  func walk(distance: Float) -> String {
      return "\(self.name) camino, \(distance) en metros"
  }

  func updateLastname(lastname: String) {
      self.lastname = lastname
  }

  func printPerson() {
      print("Name: \(self.name) \nLastname: \(self.lastname) \nIsLive: \(self.isLive)")
  }
}

// Para poder usar mi clase, debemos instanciarla
let person = Person(name: "Linder", lastname: "Hassinger")
let person2 = Person(name: "Anderson", lastname: "Hassinger", documentNumber: "8888888", phoneNumber: "999999", address: "Av mi casa 123", isLive: false, email: "linder@gmail.com")

print("Persona 1")
person.printPerson()
print("Persona 2")
person2.updateLastname(lastname: "Perez")
person2.printPerson()


struct Person {
    let name: String
    let lastname: String
    let address: String

    init(name: String, lastname: String, address: String) {
        self.name = name
        self.lastname = lastname
        self.address = address
    }
}

let person: Person = Person(name: "Linder", lastname: "Hassinger", address: "av mi casa")
let people: [Person] = [
    Person(name: "Linder", lastname: "Hassinger", address: "av mi casa"),
    Person(name: "Linder", lastname: "Hassinger", address: "av mi casa"),
    Person(name: "Linder", lastname: "Hassinger", address: "av mi casa")
]



struct PokeAPI {
    let abilities: [Ability]
    let base_experience: Int
    let cries: Cries
}

struct Ability {
    let ability: AbilityItem
    let is_hidden: Bool
    let slot: Int
}

struct AbilityItem {
    let name: String
    let url: String
}

struct Cries {
    let latest: String
    let legacy: String
}



class Libro {

  var titulo: String = ""
  var autor: String = ""
  var editorial: String = ""
  var fechaPublicacion: String = ""
  var tema: String = ""

  // 
  init(titulo: String, autor: String) {
    self.titulo = titulo
    self.autor = autor
  }
  // 
  init(titulo: String, autor: String, fechaPublicacion: String) {
    self.titulo = titulo
    self.autor = autor
    self.fechaPublicacion = fechaPublicacion
  }

  //
  func updateFechaPublicacion(fechaPublicacion: String) {
    self.fechaPublicacion = fechaPublicacion
  }

  func mostrarLibro1() {
    print("Titulo: \(self.titulo) \nAutor: \(self.autor)")
  }
  func mostrarLibro2() {
    print("Titulo: \(self.titulo) \nAutor: \(self.autor) \nFecha: \(self.fechaPublicacion)")
  }

  // 
  func updateTitulo(titulo: String) {
    self.titulo = titulo
  }

}

let libro = Libro(titulo: "Title1", autor: "Autor1")

let libro2 = Libro(titulo: "Title2", autor: "Autor2", fechaPublicacion: "2023-01-01")

print("Libro1")
libro.mostrarLibro1()

print("Libro2")
libro2.updateTitulo(titulo: "TitleUpdate")
libro2.mostrarLibro2()
