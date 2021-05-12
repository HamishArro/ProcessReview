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
        let result = evaluate("1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1")
    }
    
    func testWhenSimpleAddition() {
        let result = evaluate("1 + 1")
        XCTAssertEqual(result.1, 2)
        XCTAssertEqual(result.0, "1 + 1")
    }
    
    func testWhenAdvancedAddition() {
        let result = evaluate("1293232 + 2123134")
        XCTAssertEqual(result.1, 3416366)
        XCTAssertEqual(result.0, "1293232 + 2123134")
    }
    
    func testWhenSimpleSubtracion() {
        let result = evaluate("1 - 1")
        XCTAssertEqual(result.1, 0)
        XCTAssertEqual(result.0, "1 - 1")
    }
    
    func testWhenAdvancedSubtracion() {
        let result = evaluate("23532525 - 4353")
        XCTAssertEqual(result.1, 23528172)
        XCTAssertEqual(result.0, "23532525 - 4353")
    }
    
    func testWhenSimpleMultiplication() {
        let result = evaluate("1 * 1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 * 1")
    }
    
    func testWhenAdvancedMultiplication() {
        let result = evaluate("3231 * 2141")
        XCTAssertEqual(result.1, 6917571)
        XCTAssertEqual(result.0, "3231 * 2141")
    }
    
    func testWhenSimpleDivision() {
        let result = evaluate("1 / 1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 / 1")
    }
    
    func testWhenAdvancedDivision() {
        let result = evaluate("6917571 / 3231")
        XCTAssertEqual(result.1, 2141)
        XCTAssertEqual(result.0, "6917571 / 3231")
    }

}
