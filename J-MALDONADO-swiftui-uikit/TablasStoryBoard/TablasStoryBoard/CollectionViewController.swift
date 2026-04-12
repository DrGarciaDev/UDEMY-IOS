//
//  CollectionViewController.swift
//  TablasStoryBoard
//
//  Created by Luis Alberto Garcia Rodriguez on 10/04/26.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var coleccion: UICollectionView!
    
    var lista = [Lista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        coleccion.delegate = self
        coleccion.dataSource = self
        
        let lista1 = Lista(nombre: "Juan", email: "juan@gmail")
        let lista2 = Lista(nombre: "Pedro", email: "pedro@gmail")
        let lista3 = Lista(nombre: "Luis", email: "luis@gmail")
        
        lista.append(lista1)
        lista.append(lista2)
        lista.append(lista3)
        
        coleccion.reloadData() // 👈 agrega esto
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("Total items: \(lista.count)") // ¿Imprime 0?
        return lista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coleccion.dequeueReusableCell(withReuseIdentifier: "celdacolection", for: indexPath) as! CeldaCollectionViewCell
        let list = lista[indexPath.row]
        
        cell.nombre.text = list.nombre
        cell.imagen.image = UIImage(systemName: "person.crop.circle.fill")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height: 150)
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
