//
//  TAUSteps.swift
//  TAUUITests
//
//  Created by Computer on 24/10/21.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

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
            //XCTAssertTrue(app.staticTexts["Thanks for Joining!"].exists)
            XCTAyncAssert(TAUScreen.thankYouMessage.element)
        }
    }
}
