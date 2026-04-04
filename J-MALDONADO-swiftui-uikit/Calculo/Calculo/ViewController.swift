//
//  ViewController.swift
//  Calculo
//
//  Created by Luis Alberto Garcia Rodriguez on 06/03/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var descuento: UILabel!
    
    @IBOutlet weak var cantidadtxt: UITextField!
    @IBOutlet weak var porcentajetxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func calcular(_ sender: UIButton) {
        guard let cantidad = cantidadtxt else { return }
        guard let porcentaje = porcentajetxt else { return }
        
        //let cant = (cantidad as NSString).floatValue
        let cant = Float(cantidad.text ?? "") ?? 0
        //let porciento = (porcentaje as NSString).floatValue
        let porciento = Float(porcentaje.text ?? "") ?? 0
        
        let desc = cant * porciento / 100
        let res = cant - desc
        
        resultado.text = "$\(res)"
        descuento.text = "$\(desc)"
        
        self.view.endEditing(true)
    }
    
    @IBAction func limpiar(_ sender: UIButton) {
        cantidadtxt.text = ""
        porcentajetxt.text = ""
        resultado.text = "$0.00"
        descuento.text = "$0.00"
    }
    
}

