//
//  ViewController.swift
//  CicloVidaSceneDelegateStoryBoard
//
//  Created by Luis Alberto Garcia Rodriguez on 25/04/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("viewDidLoad - AZUL se ejecuta cuando carga la vista (solo una vez)")
    }
    
    override func loadView() {
        super.loadView()
        print("loadView - AZUL el primero en ejecutarse mientras carga (solo una vez)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        print("viewWillAppear - AZUL la vista va a aparecer")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("viewDidAppear - AZUL la vista ya aparecio ")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        print("viewWillDidsappear - AZUL la vista va a desaparecer")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(true)
        print("viewDidDissapear AZUL la vista ya desaparecio ")
    }


}

