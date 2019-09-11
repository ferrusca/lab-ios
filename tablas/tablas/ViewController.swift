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
    
    struct alumno {
        var nombre: String?
        var edad: Int?
        var imagen: String?
    }
    
    //data model
    var alumnos: [alumno] = [
        alumno(nombre: "pepito", edad: 1, imagen: "Contoso_logo"),
        alumno(nombre: "ricardo", edad: 2, imagen: "Contoso_logo"),
        alumno(nombre: "jorge", edad: 3, imagen: "Contoso_logo")
    ];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //regresa numero de renglones
        return alumnos.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //que renglon se va a pintar en la tabla
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! AlumnoTableViewCell;
        /*cell.textLabel?.text = alumnos[indexPath.row]
        cell.backgroundColor = indexPath.row % 2 == 0 ? .green : .blue;
        cell.accessoryType = .detailDisclosureButton;
        cell.imageView?.image = UIImage(named: "Contoso_logo");
        */
        
        cell.nombre.text = alumnos[indexPath.row].nombre;
        cell.edad.text = String(alumnos[indexPath.row].edad);
        cell.foto.image = UIImage(named:alumnos[indexPath.row].imagen)
        return cell;
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        let cell = tableView.cellForRow(at: indexPath)
        cell?.accessoryType = .checkmark
    }

}

