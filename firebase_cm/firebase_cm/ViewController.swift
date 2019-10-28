//
//  ViewController.swift
//  firebase_cm
//
//  Created by 2020-1 on 10/28/19.
//  Copyright © 2019 ios. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func done(_ sender: UIButton) {
        guard let email = email.text, email != "", let password = password.text, password != "" else {
            return
        }
        
//        Auth.auth().createUser(withEmail: email, password: password) { (user,error) in
//            if let error = error {
//                print(error)
//                return
//            }
//            print("Se creó, el usuario es: ")
//            print(user?.user.email!)
//        }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user,error) in
            if let error = error {
                print(error)
                return
            }
            print("Se inició sesion con el usuario: ")
            print(user?.user.email!)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

