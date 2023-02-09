//
//  unitConversion_iOSTests.swift
//  unitConversion_iOSTests
//
//  Created by Seika Hirori on 2/8/23.
//

import XCTest
@testable import unitConversion_iOS
import ViewInspector

final class unitConversion_iOSTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        self.measure {
//            // Put the code you want to measure the time of here.
//        }
//    }
    let accuraryRounded:Double = 0.1
    
    func testMililitersToLiters() {
        let inputMililiters:Double = 1000.0
        let expect1:Double = 1.0
        
        let output1: Double = mililitersToLiters(inputMililiters)
        XCTAssertEqual(output1, expect1)
        
    }
    
    func testLitersToMililiters() {
        let inputLiters: Double = 1.0
        let expect1: Double = 1000.0
        
        let output1: Double = litersToMililiters(inputLiters)
        XCTAssertEqual(output1, expect1)
    }
    
    func testMililitersToC() {
        let inputMiliiters: Double = 236.6
        let expectedCup: Double = 1.0
        
        let output1: Double = mililitersToCup(inputMiliiters)
        
        XCTAssertEqual(output1, expectedCup, accuracy: accuraryRounded) // RFER #1
    }
    
    func testCupsToMililiters() {
        let inputCups: Double = 1.0
        let expectedMililiters: Double = 236.6
        
        let output1: Double = cupsToMililiters(inputCups)
        
        XCTAssertEqual(output1, expectedMililiters, accuracy: accuraryRounded)
        
    }
    
    func testMililitersToPints(){
        let inputMililiters: Double = 473.2
        let expectedPints: Double = 1.0
        
        let output1: Double = mililitersToPints(inputMililiters)
        
        XCTAssertEqual(output1, expectedPints, accuracy: accuraryRounded)
    }
    
    func testPintsToMililiters() {
        let inputPints: Double = 1.0
        let expectedMililiters: Double = 473.176
        
        let output1: Double = pintsToMililiters(inputPints)
        
        XCTAssertEqual(output1, expectedMililiters, accuracy: accuraryRounded)
    }
    
    func testMililitersToGallon() {
        let inputMililiters: Double = 3785.0
        let expectedGallon: Double = 1.0
        
        let output1: Double = mililitersToGallon(inputMililiters)
        
        XCTAssertEqual(output1, expectedGallon, accuracy: accuraryRounded)
    }
    
    func testGallonToMililiters() {
        let inputGallon: Double = 1.0
        let expectedMililiters = 3785.0
        
        let output1: Double = gallonToMililiters(inputGallon)
        
        XCTAssertEqual(output1, expectedMililiters, accuracy: accuraryRounded)
    }

    func testEnumType() {
        let enumType_mL:unitMeasurementType = unitMeasurementType.mililiters
        let expect_RV_mL:String = "mL"
        XCTAssertEqual(enumType_mL.rawValue, expect_RV_mL)
        
        let enumType_L:unitMeasurementType = unitMeasurementType.liter
        let expect_RV_L:String = "L"
        XCTAssertEqual(enumType_L.rawValue, expect_RV_L)
        
        let enumType_C:unitMeasurementType = unitMeasurementType.cup
        let expect_RV_C: String = "C"
        XCTAssertEqual(enumType_C.rawValue, expect_RV_C)
        
        let enumType_pt:unitMeasurementType = unitMeasurementType.pint
        let expect_RV_pt:String = "pt"
        XCTAssertEqual(enumType_pt.rawValue, expect_RV_pt)
        
        let enumType_gal:unitMeasurementType = unitMeasurementType.gallon
        let expect_RV_gal:String = "gal"
        XCTAssertEqual(enumType_gal.rawValue, expect_RV_gal)
        
    }

    func testDisplayMeasurementToUser() {
        let input_amount_mL_1:Double = 1000.0
        let input_unit_mL: unitMeasurementType = unitMeasurementType.mililiters
        let expect_1:String = "1000.0 mL"
        
        let result_1:String = displayMeasurementToUser(amount: input_amount_mL_1, unit: input_unit_mL)
        XCTAssertEqual(result_1, expect_1)
        
        let input_amount_mL_2:Double = 29.194
        let result_2: String = displayMeasurementToUser(amount: input_amount_mL_2, unit: input_unit_mL)
        let expect_2:String = "29.2 mL"
        XCTAssertEqual(result_2, expect_2)
        
        let input_amount_mL_3:Double = 10.44
        let result_3:String = displayMeasurementToUser(amount: input_amount_mL_3, unit: input_unit_mL)
        let expect_3:String = "10.4 mL"
        XCTAssertEqual(result_3, expect_3)
    }
    
    func testConvertMeasurements() {
        let input_mL_1:Double = 1000.0
        let input_from_1:unitMeasurementType = unitMeasurementType.mililiters
        let input_to_1:unitMeasurementType = unitMeasurementType.liter
        let output_1: Double = convertMeasurements(amount: input_mL_1, from: input_from_1, to: input_to_1)
        
        let expect_1:Double = 1.0
        XCTAssertEqual(output_1, expect_1)

        let input_2_L: Double = 0.51234
        let output_2: Double = convertMeasurements(amount: input_2_L, from: unitMeasurementType.liter, to: unitMeasurementType.mililiters)
        let expect_2:Double = 512.34
        XCTAssertEqual(output_2, expect_2)
        
        let input_3_mL:Double = 4546.0900018742995599
        let output_3:Double = convertMeasurements(amount: input_3_mL, from: unitMeasurementType.mililiters, to: unitMeasurementType.gallon)
        let expect_3:Double = 1.20094992599999228
        XCTAssertEqual(output_3, expect_3, accuracy: 0.01)
    }
    
}
