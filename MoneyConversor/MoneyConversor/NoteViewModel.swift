//
//  NoteViewModel.swift
//  MoneyConversor
//
//  Created by Alvaro Sanchez Moro on 20/10/23.
//

import Foundation
class MoneyConverter: ObservableObject {
    @Published var amount :String = ""
    @Published var currency :String = ""
    @Published var convertedAmount :String = ""
    private var MoneyConverterModel = MoneyConversor()
    func convertAmount() {
        if let amountValue = Double(amount){
            let result = MoneyConverterModel.convert(amount: amountValue, currency: currency)
            convertedAmount = String(format: "%.2f",result)
        }
        else 
        {
            convertedAmount = ""
        }
    }
}
