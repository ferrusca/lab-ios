//
//  ViewController.swift
//  Collection
//
//  Created by 2020-1 on 9/18/19.
//  Copyright © 2019 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Creating iboutlet in order to link controller to collection view
    
    @IBOutlet weak var colleccion: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        colleccion.dataSource = self
    }

}

//now¡, adding extension to this controller

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "item", for: indexPath) as! NumeroDeCeldaCollectionViewCell
        
        cell.backgroundColor = .magenta;
        cell.numero.text = String(indexPath.item)
        
        
        return cell;
    }
    
    
}

