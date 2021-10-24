//
//  TAUElements.swift
//  TAUUITests
//
//  Created by Computer on 24/10/21.
//  Copyright © 2021 Shashikant Jagtap. All rights reserved.
//

import Foundation
import XCTest

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
            // IPad and other devices.
            if UIDevice.current.userInterfaceIdiom == .pad{
                return XCUIApplication().images["iPad"]
            }
            else{
                return XCUIApplication().images[self.rawValue]
            }
        }

    }
}
