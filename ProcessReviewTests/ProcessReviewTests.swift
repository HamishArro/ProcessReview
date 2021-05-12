//
//  ProcessReviewTests.swift
//  ProcessReviewTests
//
//  Created by Hamish Arro on 12/05/2021.
//

import XCTest
@testable import ProcessReview_1

class ProcessReviewTests: XCTestCase {

    func testWhenOneValueIsEntered() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let result = evaluate("1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1")
    }
    
    func testWhenSimpleAddition() {
        let result = evaluate("1 + 1")
        XCTAssertEqual(result.1, 2)
        XCTAssertEqual(result.0, "1 + 1")
    }
    
    func testWhenSimpleSubtracion() {
        let result = evaluate("1 - 1")
        XCTAssertEqual(result.1, 0)
        XCTAssertEqual(result.0, "1 - 1")
    }
    
    func testWhenSimpleMultiplication() {
        let result = evaluate("1 * 1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 * 1")
    }
    
    func testWhenSimpleDivision() {
        let result = evaluate("1 / 1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 / 1")
    }

}
