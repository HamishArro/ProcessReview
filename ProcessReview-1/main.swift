//
//  main.swift
//  ProcessReview-1
//
//  Created by Hamish Arro on 12/05/2021.
//

import Foundation

let letters = CharacterSet.letters

func evaluate(_ input: String) throws -> (String, Int) {
    let components = input.split(separator: " ").map { String($0) }
    guard var result = Int(components[0]) else { throw EvaluateError.invalidInput }
    if components.count == 3 {
        guard let modifier = Int(components[2]) else { throw EvaluateError.invalidInput }
        switch components[1] {
        case "+": result += modifier
        case "-": result -= modifier
        case "*": result *= modifier
        case "/": result /= modifier
        default: throw EvaluateError.invalidSymbol
        }
    } else if components.count > 3 { throw EvaluateError.invalidInput }
    return (input, result)
}

enum EvaluateError: Error {
    case invalidSymbol
    case invalidInput
}
 
