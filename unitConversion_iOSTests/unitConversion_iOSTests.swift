//
//  unitConversion_iOSTests.swift
//  unitConversion_iOSTests
//
//  Created by Seika Hirori on 2/8/23.
//

import XCTest
@testable import unitConversion_iOS

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
        
        let output1: Double = mililitersToC(inputMiliiters)
        
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

    
    
    func testUnitType() {
        let expectedTypeGallon:
        
    }
    
}
