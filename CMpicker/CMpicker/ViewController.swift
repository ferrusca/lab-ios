//
//  ViewController.swift
//  CMpicker
//
//  Created by 2020-1 on 9/23/19.
//  Copyright © 2019 ios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var selected = [String?]()
    
    var data = [
        [
            "Enero", "Febrero", "Mar", "Abr", "May", "Jun", "Jul", "ago", "sep", "oct", "nov", "dic"
        ],
        [
            "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado", "Domingo"
        ],
    ]
    
    func fillSelectedData() {
        for i in data {
            selected.append(nil)
            
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //numero de columnas
        return data.count;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        // number of rowds
        return data[component].count;
    }

    @IBOutlet weak var simplePicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Delegando el simple picker a este controlador (añadiendo el protocolo UIPickerViewDelegate)
        simplePicker.dataSource = self
        simplePicker.delegate = self
        fillSelectedData()
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[component][row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selected[component] = data[component][row]
        if (selected.firstIndex(of: nil) == nil) {
            // Array is fully filled
            print("Uste' selecciono")
            for i in selected {
                print(i)
            }
        }
        
    
    }

    
    
}

