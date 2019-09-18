import UIKit

var foo: String?
foo = "Jorge"

foo = nil
print(foo)


//forced binding
// print(foo!)

//optional binding
if let bar = foo {
    print ("Tiene valor y es:  \(bar)")
} else {
    print("La variable tiene a nil")
}

let bar = foo ?? "se asigno esta basura"
print(bar)
