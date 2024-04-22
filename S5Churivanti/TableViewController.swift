//
//  TableViewController.swift
//  Created by Mac19 on 13/04/24.
//

import UIKit

struct Person {
    let name: String
    let lastname: String
    let address: String
}

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    // Instanciando como referencia al indentificador
    let people: [Person] = [
            Person(name: "Pepe", lastname: "Perez", address: "Av mi casa 123"),
            Person(name: "Juan", lastname: "Perez", address: "Av siempre 123"),
            Person(name: "Lucas", lastname: "Zapata", address: "Av tecsup 123")
        ]
    
    @IBOutlet var Tabla: UITableView!
    
    // Creando un arreglo de clases
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Tabla.delegate = self
        Tabla.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return people.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = Tabla.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let person = people[indexPath.row]
        var tableContent =  UIListContentConfiguration.cell()
        
        tableContent.text = "\(person.name) \(person.lastname)"
        tableContent.secondaryText = person.address
        tableContent.image = UIImage(systemName: "person")
        
        
        cell.contentConfiguration = tableContent
        
        return cell
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "secondSegue", sender: people[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondSegue" {
            let secondView: Did2ViewController = segue.destination as! Did2ViewController
            if let person = sender as? Person {
                secondView.contenidoCeldas = "\(person.name) \(person.lastname)"
            }
        }

    }
}
