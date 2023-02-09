//
//  unitConversion_iOSApp.swift
//  unitConversion_iOS
//
//  Created by Seika Hirori on 2/8/23.
//

import SwiftUI

@main
struct unitConversion_iOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

enum unitMeasurementType:String {
    case mililiters = "mL"
    case liter = "L"
    case cup = "C"
    case pint = "pt"
    case gallon = "gal"
}

func displayMeasurementToUser(amount:Double, unit:unitMeasurementType) -> String {
    var output:String
    
    // Rounded for the user to see
    output = String(format: "%.1f \(unit.rawValue)", amount) // RFER #3
    return output
}

func mililitersToLiters(_ miliLiters: Double) -> Double {
    var result: Double
    
    result = miliLiters / 1000
    
    return result
}

func litersToMililiters(_ Liters: Double) -> Double {
    var result: Double
    
    result =  Liters * 1000
    
    return result
}

func mililitersToC(_ mL:Double) -> Double {
    var result: Double
    
    result = mL / 236
    
    return result
}

func cupsToMililiters(_ Cups: Double) -> Double {
    var result: Double
    
    result = Cups * 236.6
    
    return result
}

func mililitersToPints(_ mililiters: Double) -> Double {
    var result: Double
    
    result = mililiters / 473.2
    
    return result
}

func pintsToMililiters(_ Pints: Double) -> Double {
    var result: Double = 0.0
    
    result = Pints * 473.2
    
    return result
}

func mililitersToGallon(_ mililiters: Double) -> Double {
    var result: Double = 0.0
    
    result = mililiters / 3785
    
    return result
}

func gallonToMililiters(_ Gallons:Double) -> Double {
    var result: Double = 0.0
    
    result = Gallons * 3785
    
    return result
}
