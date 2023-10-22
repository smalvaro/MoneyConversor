//
//  NoteModel.swift
//  MoneyConversor
//
//  Created by Alvaro Sanchez Moro on 20/10/23.
//

import Foundation
struct MoneyConversor {
    let euroToDolar: Double = 1.06
    let dolarToPound: Double = 0.82
    let euroToPound: Double = 0.87
    var convertedAmount :Double = 0.0
    mutating func convert(amount: Double, currency: String) -> Double  {
        if (currency == "EUR/USD") {
            convertedAmount = amount * euroToDolar
            return convertedAmount
        }
        if (currency == "USD/GBP") {
            convertedAmount = amount * dolarToPound
            return convertedAmount
        }
        if (currency == "EUR/GBP") {
            convertedAmount = amount * euroToPound
            return convertedAmount
        }
        else{
            return amount
        }
    }
}
