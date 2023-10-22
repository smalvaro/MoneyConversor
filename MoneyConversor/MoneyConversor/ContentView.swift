//
//  ContentView.swift
//  MoneyConversor
//
//  Created by Alvaro Sanchez Moro on 20/10/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: MoneyConverter = MoneyConverter()
    var options : [String] = ["EUR/USD","USD/GBP","EUR/GBP"]
    @State private var selectedOptionIndex = 0
    var body: some View {
        NavigationView{
            VStack {
                Text("Money Conversor").padding(.horizontal,16).underline()
                Picker("Seleccione una opcion", selection: $selectedOptionIndex) {
                    ForEach(0..<options.count, id: \.self) { index in
                        Text(options[index]).tag(index)
                                }
                }.padding(.top, 25)
                
                TextField("Introduce the amount to convert", text: $viewModel.amount)
                    .padding(EdgeInsets(top: 25, leading: 70, bottom: 25, trailing: 25))
                Button("Convert") {
                    if selectedOptionIndex >= 0 && selectedOptionIndex < options.count {
                        viewModel.currency = options[selectedOptionIndex]
                            }
                    viewModel.convertAmount()
                }.buttonStyle(.bordered).tint(.green)
                Text("Amount Converted = \(viewModel.convertedAmount)").padding(.top, 25)
                Spacer()
            }
        }.navigationTitle("USAL Exchange").navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ContentView()
}
