import UIKit


func realizaOperacion(a: Int, b: Int, funcion: (Int, Int) -> Int) {
    let resultado = funcion(a, b);
    print(resultado);
}

//this is a clousure
var suma = { (a: Int, b: Int) -> Int in
    print(a,b);
    return a+b;
}

print(realizaOperacion(a: 3, b: 2, funcion: suma))
