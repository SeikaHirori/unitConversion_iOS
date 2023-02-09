//
//  unitConversion_iOSUITests.swift
//  unitConversion_iOSUITests
//
//  Created by Seika Hirori on 2/8/23.
//

import XCTest
import ViewInspector

final class unitConversion_iOSUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testDefaultSettings() throws {
        // Check the default states when the app is launched
        
        // Check that the "from" segmented control starts on mL (mililiters)
        
        // "to" starts on C (cups)
        
        // textField for "from" should be 0.00 mL
        
        // Text where it displays the result of the conversion, and default value should be 0.00 Cups
    }

    func testUserStoryTime() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        
        // User launches app
        app.launch()

        //
        
        
        
        
        // User exits app
        app.terminate()
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
    
  
}
