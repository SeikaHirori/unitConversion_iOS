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
    
    var toValueResult:String {
        let result:Double = convertMeasurements(amount: fromValue, from: unitTypeFrom, to: unitTypeTo)
        let output:String = displayMeasurementToUser(amount: result, unit: unitTypeTo)
        return output
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("input amount", value: $fromValue, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountFromIsFocused)
//                        .multilineTextAlignment(.trailing) // Disabled as unable to get Text "OUTCOME" to align to the right with current limited knowledge.
                } header: {
                    Text("Amount?")
                }
                
                Section {
                    Picker("Convert from", selection: $unitTypeFrom) {
                        // RFER #6
                        ForEach(unitMeasurementType.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                        
                    }
                } header: {
                    Text("Convert from") // TO-DO
                }
                .pickerStyle(.segmented)
                
                Section {
                    Picker("Convert to", selection: $unitTypeTo) {
                        // RFER #6
                        ForEach(unitMeasurementType.allCases, id: \.self) {
                            Text($0.rawValue)
                        }
                        
                    }
                } header: {
                    Text("Convert to") // TO-DO
                }
                .pickerStyle(.segmented)
                
                Section {
                    Text(toValueResult)
                        .frame(alignment: .trailing)
//                        .multilineTextAlignment(.trailing)
                } header: {
                    Text("Outcome (Rounded to the nearest tenth place)") // TO-DO
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
