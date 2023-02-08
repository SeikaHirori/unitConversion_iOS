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
    
    

}
