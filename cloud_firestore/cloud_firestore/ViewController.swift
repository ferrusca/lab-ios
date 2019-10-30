//
//  ViewController.swift
//  cloud_firestore
//
//  Created by 2020-1 on 10/30/19.
//  Copyright © 2019 ios. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var lastnameInput: UITextField!
    @IBOutlet weak var ageInput: UITextField!
    @IBOutlet weak var table: UITableView!
    
    @IBAction func sendUser(_ sender: UIButton) {
        var data: [String: Any] = [
            "nombre": nameInput.text,
            "apellido": lastnameInput.text,
            "edad": ageInput.text
        ]
        ref = getRef.collection("alumno").addDocument(data: data, completion: { (error) in
            if let error = error {
                print(error.localizedDescription)
                return
            } else {
                print("Datos guardados con éxito")
            }
        })
    }
    
    var ref: DocumentReference!
    var getRef: Firestore!
    
    var responseData: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.getRef = Firestore.firestore()
        self.table.dataSource = self
        self.getAlumnos()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.responseData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        cell.textLabel!.text = self.responseData[indexPath.row]
        return cell
    }

    func getAlumnos() {
//        getRef.collection("alumno").getDocuments { (QuerySnapshot, error) in
        getRef.collection("alumno").addSnapshotListener{ (QuerySnapshot, error) in
            if let error = error {
                print(error.localizedDescription)
                return
            } else {
                self.responseData.removeAll()
                for document in QuerySnapshot!.documents {
                    let documentId = document.documentID
                    let rowData = document.data()
                    let name = rowData["nombre"] as? String ?? "Sin valor"
                    self.responseData.append(name)
                }
                self.table.reloadData()
            }
        }
    }

}

