import UIKit

enum Currency {
    case cad
    case mxn
}

var currencyFormatter: NumberFormatter = {
    let formatter = NumberFormatter()
    formatter.numberStyle = .currency
    return formatter
}()

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

var currency = Currency.cad

func convert(_ dollars: Double) -> Double {
    if currency == .cad {
       conversion = usdToCad(amount: dollars)
    } else if currency == .mxn {
        conversion = usdToPeso(amount: dollars)
    }
    return conversion
}
    
func convert(amountString: String) -> String? {
    let amount = Double(amountString)
    
    guard let unwrappedAmount = amount else {
        return "invalid amount"
    }
    return String(convert(unwrappedAmount))

}
currency = .cad
convert(amountString: "65000.00")
currencyFormatter.string(from: NSNumber(value: convert(65000.00)))
currency = .mxn
convert(amountString: "65000.00")
currencyFormatter.string(from: NSNumber(value: convert(65000.00)))

