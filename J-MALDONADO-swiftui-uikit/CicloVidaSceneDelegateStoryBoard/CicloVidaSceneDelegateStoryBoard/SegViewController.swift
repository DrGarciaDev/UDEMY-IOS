//
//  SegViewController.swift
//  CicloVidaSceneDelegateStoryBoard
//
//  Created by Luis Alberto Garcia Rodriguez on 25/04/26.
//

import UIKit

class SegViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("viewDidLoad - NARANJA se ejecuta cuando carga la vista (solo una vez)")
    }
    
    override func loadView() {
        super.loadView()
        print("loadView - NARANJA el primero en ejecutarse mientras carga (solo una vez)")
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
