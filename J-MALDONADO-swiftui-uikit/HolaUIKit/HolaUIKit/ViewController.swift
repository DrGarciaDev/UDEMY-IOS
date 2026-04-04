//
//  ViewController.swift
//  HolaUIKit
//
//  Created by Luis Alberto Garcia Rodriguez on 26/02/26.
//

import UIKit

class ViewController: UIViewController {

    // variables
    @IBOutlet weak var home: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Hola UIKit")
        home.text = "House"
    }

    // funciones

    @IBAction func alerta(_ sender: UIButton) {
        let alert = UIAlertController(title: "Título", message: "Mensaje de alerta", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Aceptar", style: .cancel){_ in
            print("Boton ejecutado")
        }
        
        alert.addAction(ok)
        
        present(alert, animated: true, completion: {
            print("Alerta presentada")
        })
    }
}

