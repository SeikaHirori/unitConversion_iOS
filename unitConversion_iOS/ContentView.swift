//
//  ContentView.swift
//  unitConversion_iOS
//
//  Created by Seika Hirori on 2/8/23.
//

import SwiftUI

struct ContentView: View {
    @State private var unitTypeFrom:unitMeasurementType = unitMeasurementType.mililiters
    @State private var unitTypeTo: unitMeasurementType = unitMeasurementType.liter
    @State private var fromValue: Double = 0.0
    
    @FocusState private var amountFromIsFocused: Bool
    
    var toValue:Double {
        let result:Double = convertMeasurements(amount: fromValue, from: unitTypeFrom, to: unitTypeTo)
        return result
    }
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
