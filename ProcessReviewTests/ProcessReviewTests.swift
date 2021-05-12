//
//  ProcessReviewTests.swift
//  ProcessReviewTests
//
//  Created by Hamish Arro on 12/05/2021.
//

import XCTest
@testable import ProcessReview_1

class ProcessReviewTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testWhenOneValueIsEntered() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let result = evaluate("1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1")
    }

}
