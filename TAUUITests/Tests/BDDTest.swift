//
//  BDDTest.swift
//  TAUUITests
//
//  Created by Computer on 24/10/21.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

class BDDTest: TAUUITestBase {
    
    func testThankYouMessageInBDDStyle(){
        givenAppIsReady()
        whenIEnter(city: "London")
        whenIEnrolled()
        /*
        let isThanksMessageIsExist = TAUScreen.thankYouMessage.element.waitForExistence(timeout: 10)
        if isThanksMessageIsExist{
            XCTAssertTrue(TAUScreen.thankYouMessage.element.exists)
        }
         */
        thenIShouldSeeThankYouMessage()
    }
    
}

/*
 // Placed extensions on TAUSteps.swift
extension TAUUITestBase{
    
    func givenAppIsReady(){
        XCTContext.runActivity(named: "Given App is Ready"){ _ in
            //XCTAssertTrue(app.buttons["enrollButton"].exists)
            XCTAssertTrue(TAUScreen.enrollButton.element.exists)
        }
    }
    
    func whenIEnter(city:String){
        XCTContext.runActivity(named: "When I enter city \(city)"){ _ in
            //app.textFields["city"].tap()
            //app.textFields["city"].typeText(city)
            TAUScreen.cityTextField.element.tap()
            TAUScreen.cityTextField.element.typeText(city)
        }
    }
    
    func whenIEnrolled(){
        XCTContext.runActivity(named: "Given I Enrolled"){ _ in
            //app.buttons["enrollButton"].tap()
            TAUScreen.enrollButton.element.tap()
        }
    }
    
    func thenIShouldSeeThankYouMessage(){
        XCTContext.runActivity(named: "Then I should see Thanks message"){ _ in
            XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
        }
    }
}
*/
 
/*
 // Placed Enums in TAUElements.swift
enum TAUScreen: String {
    
    case welcomeMessage = "welcomeMessage"
    case taulogo = "TAUlogo"
    case enterCityLabel = "enterCity"
    case cityTextField = "city"
    case enrollButton = "enrollButton"
    case thankYouMessage = "Thanks for Joining!"
    case errorMessage = "Please Enter City"
    
    var element:XCUIElement{
        
        switch self {
        case .welcomeMessage, .enterCityLabel, .thankYouMessage, .errorMessage:
            return XCUIApplication().staticTexts[self.rawValue]
        case .cityTextField:
            return XCUIApplication().textFields[self.rawValue]
        case .enrollButton:
            return XCUIApplication().buttons[self.rawValue]
        case .taulogo:
            return XCUIApplication().images[self.rawValue]
        }

    }
}
*/
