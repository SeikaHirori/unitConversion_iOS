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

func cupsToMililiters(_ Cups: Double) -> Double{
    var output: Double = 0.0
    
    output = Cups * 236.6
    
    return output
}
