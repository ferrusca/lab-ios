import UIKit

//var str = "Hello, playground"

protocol Estudiar {
    func calculoVectorial()
}

class Alumno {
    func leer(){
        print("Alumno leyendo")
    }
}

class AlumnosTableViewController: UITableViewController{
    
}

//UITableViewDelegate
//si se desea obtener el tab de cada renglon, cambiar el tamaño del row

class Derecho: Alumno, Estudiar {
    func calculoVectorial() {
        print("El alumno a huevo debe utilizar el metodo")
    }
}

extension String{
    func grita(text: String) {
        print("GRITANDOOOO -> " + text);
    }
}

var str: String = "Hola mundo"
"".grita(text: str)
