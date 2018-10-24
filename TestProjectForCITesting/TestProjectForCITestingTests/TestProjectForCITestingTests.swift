//
//  TestProjectForCITestingTests.swift
//  TestProjectForCITestingTests
//
//  Created by Norbert Nemes on 24/10/18.
//  Copyright © 2018 Norbert Nemes. All rights reserved.
//

import XCTest
@testable import TestProjectForCITesting

class TestProjectForCITestingTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    func testViewControllerIntToStringConversion() {
        let viewController = ViewController()
        let number = 5
        let stringFromNumber = viewController.stringFromInt(number: number)
        let integerValueOfString = Int(stringFromNumber)
        
        XCTAssertEqual(number, integerValueOfString)
    }
    
    func testWhatSupposeToFail() {
        XCTAssertEqual(1, 2)

    }

}
