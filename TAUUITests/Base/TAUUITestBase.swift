//
//  TAUUITestBase.swift
//  TAUUITests
//
//  Created by Computer on 24/10/21.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class TAUUITestBase:XCTestCase{
    
    var app = XCUIApplication()
    override func setUpWithError() throws {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }

    override func tearDownWithError() throws {
        super.tearDown()
        app.terminate()
    }
    
    func XCTAyncAssert(_ element:XCUIElement){
        let isThanksMessageIsExist = TAUScreen.thankYouMessage.element.waitForExistence(timeout: 10)
        if isThanksMessageIsExist{
            XCTAssertTrue(TAUScreen.thankYouMessage.element.exists)
        }
    }
}
