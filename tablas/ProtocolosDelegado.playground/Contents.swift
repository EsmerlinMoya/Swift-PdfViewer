import UIKit

protocol OperacionesBasicas {
    
    func Suma(a:Int,b:Int)
    
    func Resta(a:Int,b:Int)
    
}

class Computadora {
    
    let CPU:String = "8086"
}

class Calculadora: Computadora, OperacionesBasicas{
    
    
    func Suma(a:Int,b:Int) {
        print("Estoy sumando")
    }
    
    func Resta(a:Int,b:Int) {
        print("Estoy Restando")
    }
}
