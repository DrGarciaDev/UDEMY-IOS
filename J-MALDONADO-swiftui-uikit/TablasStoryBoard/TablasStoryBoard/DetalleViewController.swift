//
//  DetalleViewController.swift
//  TablasStoryBoard
//
//  Created by Luis Alberto Garcia Rodriguez on 10/04/26.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var nombre: UILabel!
    
    @IBOutlet weak var email: UILabel!
    
    var datosLista: Lista?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nombre.text = datosLista?.nombre
        email.text = datosLista?.email
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
