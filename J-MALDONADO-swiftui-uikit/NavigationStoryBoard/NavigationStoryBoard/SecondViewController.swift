//
//  SecondViewController.swift
//  NavigationStoryBoard
//
//  Created by Luis Alberto Garcia Rodriguez on 03/04/26.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var resultado: UILabel!
    
    //variable para recibir parametro desde pantalla principal
    var saludo: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //cuando se recibe el valor en la variable saludo se pasará al label llamada resultado
        resultado.text = saludo
    }
    
    @IBAction func regresar(_ sender: UIButton) {
        //dismiss(animated: true)
        //ayuda a regresar a la pantalla anterior 
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
