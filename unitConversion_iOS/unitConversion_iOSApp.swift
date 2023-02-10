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

func convertMeasurements(amount: Double, from: unitMeasurementType, to: unitMeasurementType) -> Double {
    
    func debug_print_invalidUnit(){
        print("ERROR: Invalid")
    }
    
    var output: Double
    
    var convertToBaseUnit: Double
    
    // Convert input amount into the base unit, mililiters
    switch from { //
    case .mililiters:
        convertToBaseUnit = amount
    case .liter:
        convertToBaseUnit = litersToMililiters(amount)
    case .cup:
        convertToBaseUnit = cupsToMililiters(amount)
    case .pint:
        convertToBaseUnit = pintsToMililiters(amount)
    case .gallon:
        convertToBaseUnit = gallonToMililiters(amount)
    }
    
    switch to {
    case .mililiters:
        output = convertToBaseUnit
    case .liter:
        output = mililitersToLiters(convertToBaseUnit)
    case .cup:
        output = mililitersToCup(convertToBaseUnit)
    case .pint:
        output = mililitersToPints(convertToBaseUnit)
    case .gallon:
        output = mililitersToGallon(convertToBaseUnit)
    }
    
    return output
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

func mililitersToCup(_ mL:Double) -> Double {
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
    
    result = mililiters / 3785 // # RFER #4
    
    return result
}

func gallonToMililiters(_ Gallons:Double) -> Double {
    var result: Double = 0.0
    
    result = Gallons * 3785 // # RFER #4
    
    return result
}
