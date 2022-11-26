import UIKit

//Genera una funcion que permita recibir un texto y que pueda imprimir la cantidad de veces que se repite una letra

var texto = "la historia de mi vida"



extension Sequence where Element: Hashable {
    func uniqued() -> [Element] {
        var set = Set<Element>()
        return filter { set.insert($0).inserted }
    }
}

func contarLetras(frace:String){
    let fraceModificada=frace.lowercased().replacingOccurrences(of: " ", with: "")
    let arrayLetras = frace.lowercased().replacingOccurrences(of: " ", with: "").map{$0}.uniqued()

    
    for letra in arrayLetras {
        let contadorLetra = fraceModificada.filter{$0 == letra}.count
        print("\(letra) = \(contadorLetra)")
    }
     
}
contarLetras(frace: texto)

