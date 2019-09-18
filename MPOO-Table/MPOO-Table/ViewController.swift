//
//  ViewController.swift
//  MPOO-Table
//
//  Created by 2020-1 on 9/2/19.
//  Copyright © 2019 hscm. All rights reserved.
//

import UIKit

class ViewController: UIViewController,
UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    // Manage cells in this place!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "miCelda", for: indexPath)
        
        cell.textLabel?.text = "Hola desde protocolo. Row \(indexPath.row)"
        
        return cell
    }
    
}

