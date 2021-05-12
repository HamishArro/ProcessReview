//
//  main.swift
//  ProcessReview-1
//
//  Created by Hamish Arro on 12/05/2021.
//

import Foundation

func evaluate(_ input: String) -> (String, Int) {
    let components = input.split(separator: " ").map { String($0) }
    var result = Int(components[0])!
    if components.count == 3 {
        let modifier = Int(components[2])!
        switch components[1] {
        case "+": result += modifier
        case "-": result -= modifier
        case "*": result *= modifier
        case "/": result /= modifier
        default: print("Error - Inncorrect input")
        }
    }
    return (input, result)
}
