// Reto1: Crear una clase libre, minimo  con 5 atributos, 2 constructores y 3 metodos

class Libro {

  var titulo: String = ""
  var autor: String = ""
  var editorial: String = ""
  var fechaPublicacion: String = ""
  var tema: String = ""

  // Constructor con dos atributos
  init(titulo: String, autor: String) {
    self.titulo = titulo
    self.autor = autor
  }
  // Constructor con 3 atributos
  init(titulo: String, autor: String, fechaPublicacion: String) {
    self.titulo = titulo
    self.autor = autor
    self.fechaPublicacion = fechaPublicacion
  }

  // Metodo actualizar fecha
  func updateFechaPublicacion(fechaPublicacion: String) {
    self.fechaPublicacion = fechaPublicacion
  }

  func mostrarLibro1() {
    print("Titulo: \(self.titulo) \nAutor: \(self.autor)")
  }
  func mostrarLibro2() {
    print("Titulo: \(self.titulo) \nAutor: \(self.autor) \nFecha: \(self.fechaPublicacion)")
  }

  // Metodo actualizar titulo
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