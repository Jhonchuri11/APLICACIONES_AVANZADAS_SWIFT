//
//  Did2ViewController.swift
//
//  Created by Mac19 on 13/04/24.
//

import UIKit

class Did2ViewController: UIViewController {

    var contenidoCeldas: String?
    
    @IBOutlet var DetailB: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let contenido = contenidoCeldas {
                print(contenido)
                DetailB.text = contenido
            } else {
                DetailB.text = "No se ha proporcionado contenido"
            }
    }
    

}
