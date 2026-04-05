//
//  ViewController.swift
//  NavigationStoryBoard
//
//  Created by Luis Alberto Garcia Rodriguez on 03/04/26.
//

import UIKit

class ViewController: UIViewController {

    //variable que puede ser un textfield para recibir el valor en pantalla y mandarlo a la otra pantalla
    let hola = "Hola como estás?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //segue es "la tubería" que conecta las pantallas y tiene como identificador el nombre que pusimos "enviar"
        if segue.identifier == "enviar" {
            //aquí se especifica que viewController es el destino a donde se enviará el valor
            //para poder obtener el parámetro que vive en el viewController en este caso el SecondViewController
            let destino = segue.destination as? SecondViewController
            
            destino?.saludo = hola
        }
    }
    
    @IBAction func regresaAlHome(segue: UIStoryboardSegue) {
        print("Regresar al Home")
    }

}

