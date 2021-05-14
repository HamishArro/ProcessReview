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
        XCTAssertThrowsError(try evaluate("1 % 1"), "evaluate() should throw error when inccorect symbol", { (errorThrown) in
            XCTAssertEqual(errorThrown as? EvaluateError, EvaluateError.invalidSymbol)
        })
    }
    
    func testWhenLetterInString() throws {
        XCTAssertThrowsError(try evaluate("1a + 1b"))
        XCTAssertThrowsError(try evaluate("1 - 1b"), "evaluate() should throw error when inccorect input", { (errorThrown) in
            XCTAssertEqual(errorThrown as? EvaluateError, EvaluateError.invalidInput)
        })
    }
    
    func testTwoInputs() throws {
        let result = try evaluate("1 +")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 +")
    }
    
    func testFiveInputs() throws {
        XCTAssertThrowsError(try evaluate("1 + 1 + 4"))
        XCTAssertThrowsError(try evaluate("1 + 1 + 4"), "evaluate() should throw error when too many componemts", { (errorThrown) in
            XCTAssertEqual(errorThrown as? EvaluateError, EvaluateError.tooManyComponents)
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
    
    func testWhenSimpleSubtracion() throws {
        let result = try evaluate("1 - 1")
        XCTAssertEqual(result.1, 0)
        XCTAssertEqual(result.0, "1 - 1")
    }
    
    func testWhenSimpleMultiplication() throws {
        let result = try evaluate("1 * 1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 * 1")
    }
    
    func testWhenSimpleDivision() throws {
        let result = try evaluate("1 / 1")
        XCTAssertEqual(result.1, 1)
        XCTAssertEqual(result.0, "1 / 1")
    }

}
