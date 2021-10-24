//
//  TAUUITests.swift
//  TAUUITests
//
//  Created by Computer on 24/10/21.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import XCTest

class TAUUITests: TAUUITestBase {

/*
    // Defined setup and teardown in base class
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        //XCUIApplication.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
*/
    func testAllElements() throws {
        // UI tests must launch the application that they test.
        // Defined the setup in base class.
        //let app = XCUIApplication()
        //app.launch()
        app.staticTexts["welcomeMessage"].tap()
        app.staticTexts["enterCity"].tap()
        app/*@START_MENU_TOKEN@*/.buttons["enrollButton"]/*[[".buttons[\"Enroll\"]",".buttons[\"enrollButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.staticTexts["Please Enter City"].tap()
        XCTAssertTrue(app.staticTexts["Please Enter City"].exists)
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testThankYouMessage(){
        // Defined the setup in base class.
        //let app = XCUIApplication()
        //app.launch()
        app.staticTexts["welcomeMessage"].tap()
        app.textFields["city"].tap()
        app.textFields["city"].typeText("London")
        app.buttons["enrollButton"].tap()
        app.buttons["enrollButton"].tap()
        XCTAssertTrue(XCUIApplication().staticTexts["Please Enter City"].exists)
    }

    func testLaunchPerformance() throws {
        /*
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
         */
    }
}
