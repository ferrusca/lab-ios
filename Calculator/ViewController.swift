//
//  ViewController.swift
//  Calculator
//
//  Created by 2020-1 on 9/4/19.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func numbers(_ sender: UIButton) {
        print("Soy el siete machete")
        let numStr = sender.tag
        print(numStr)
    }
 
    
}

