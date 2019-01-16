//
//  Unit_TestingTests.swift
//  Unit TestingTests
//
//  Created by Evgeniy Ryshkov on 16/01/2019.
//  Copyright © 2019 Evgeniy Ryshkov. All rights reserved.
//

import XCTest
@testable import Unit_Testing

class Unit_TestingTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        super.tearDown()
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testAllWordsLoaded() {
        let playData = PlayData()
        XCTAssertEqual(playData.allWords.count, 384001, "allWords was not 384001")
    }
}
