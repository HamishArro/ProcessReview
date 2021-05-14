//
//  ProcessReviewTests.swift
//  ProcessReviewTests
//
//  Created by Hamish Arro on 12/05/2021.
//

import XCTest
@testable import ProcessReview_1

class ProcessReviewTests: XCTestCase {
    
    func testWhenWrongSymbol() throws {
        XCTAssertThrowsError(try evaluate("1 & 1")) // just checks to see if an error is thrown & below checks the type of error thrown
        XCTAssertThrowsError(try evaluate("1 % 1"), "evaluate() should throw error when inccorect input", { (errorThrown) in
            XCTAssertEqual(errorThrown as? EvaluateError, EvaluateError.invalidInput)
        })
    }

    func testWhenOneValueIsEntered() throws {
        let result = try evaluate("1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1")
    }
    
    func testWhenSimpleAddition() throws {
        let result = try evaluate("1 + 1")
        XCTAssertEqual(result.1, 2)
        XCTAssertEqual(result.0, "1 + 1")
    }
    
    func testWhenAdvancedAddition() throws {
        let result = try evaluate("1293232 + 2123134")
        XCTAssertEqual(result.1, 3416366)
        XCTAssertEqual(result.0, "1293232 + 2123134")
    }
    
    func testWhenSimpleSubtracion() throws {
        let result = try evaluate("1 - 1")
        XCTAssertEqual(result.1, 0)
        XCTAssertEqual(result.0, "1 - 1")
    }
    
    func testWhenAdvancedSubtracion() throws {
        let result = try evaluate("23532525 - 4353")
        XCTAssertEqual(result.1, 23528172)
        XCTAssertEqual(result.0, "23532525 - 4353")
    }
    
    func testWhenSimpleMultiplication() throws {
        let result = try evaluate("1 * 1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 * 1")
    }
    
    func testWhenAdvancedMultiplication() throws {
        let result = try evaluate("3231 * 2141")
        XCTAssertEqual(result.1, 6917571)
        XCTAssertEqual(result.0, "3231 * 2141")
    }
    
    func testWhenSimpleDivision() throws {
        let result = try evaluate("1 / 1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 / 1")
    }
    
    func testWhenAdvancedDivision() throws {
        let result = try evaluate("6917571 / 3231")
        XCTAssertEqual(result.1, 2141)
        XCTAssertEqual(result.0, "6917571 / 3231")
    }

}
