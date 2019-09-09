//
//  ViewController.swift
//  tablas
//
//  Created by 2020-1 on 9/9/19.
//  Copyright © 2019 ios. All rights reserved.
//

import UIKit

//protocol uitableviewdataSource se usa para añadir informacion a la tabla
//protocol UITableViewDelegate para propiedades de la celda
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //regresa numero de renglones
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //que renglon se va a pintar en la tabla
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath);
        cell.textLabel?.text = "hola celda \(indexPath)";
        cell.backgroundColor = indexPath.row % 2 == 0 ? .green : .blue;
        cell.accessoryType = .detailDisclosureButton;
        cell.imageView?.image = UIImage(named: "Contoso_logo");
        
        
        return cell;
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}

