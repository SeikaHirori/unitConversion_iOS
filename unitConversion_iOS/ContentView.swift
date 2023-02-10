//
//  ContentView.swift
//  unitConversion_iOS
//
//  Created by Seika Hirori on 2/8/23.
//

import SwiftUI

struct ContentView: View {
    // Place Holders :3
    let debugPlaceHolder:String = "DEBUG: Hello lovely chaps :3"
    
    @State private var unitTypeFrom:unitMeasurementType = unitMeasurementType.mililiters
    @State private var unitTypeTo: unitMeasurementType = unitMeasurementType.liter
    @State private var fromValue: Double = 0.0
    
    @FocusState private var amountFromIsFocused: Bool
    
    var toValue:Double {
        let result:Double = convertMeasurements(amount: fromValue, from: unitTypeFrom, to: unitTypeTo)
        return result
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("input amount", value: $fromValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountFromIsFocused)
                } header: {
                    Text("Amount?")
                }
                
                Section {
                    Picker("Convert from", selection: $unitTypeFrom) {
                    }
                } header: {
                    Text("Convert from")
                }
                
                Section {
                    
                } header: {
                    Text("Convert to")
                }
                
                Section {
                    
                } header: {
                    Text("Outcome")
                }
                
                
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
