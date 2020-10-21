import UIKit

enum Currency {
    case cad
    case mxn
}

//let usdToCad = dollar * 1.31

var conversion = 0.0

func usdToCad(amount: Double) -> Double {
    conversion = amount * 1.31
    return conversion
}

//let usdToPeso = dollar * 21.10

func usdToPeso(amount: Double) -> Double {
    conversion = amount * 21.10
    return conversion
}

let currency = Currency.cad

func convert(_ dollars: Double) -> Double {
    if currency == .cad {
       conversion = usdToCad(amount: dollars)
    } else if currency == .mxn {
        conversion = usdToPeso(amount: dollars)
    }
    return conversion
}
    
