//
//  main.swift
//  ProcessReview-1
//
//  Created by Hamish Arro on 12/05/2021.
//

import Foundation

func evaluate(_ input: String) -> (String, Int) {
    var components = input.split(separator: " ")
    var result: Int
    if components.count > 1 {
        switch components[1] {
        case "+": result = Int(components[0]) + Int(components[2])
        case "-": result = Int(components[0]) - Int(components[2])
        case "*": result = Int(components[0]) * Int(components[2])
        case "/": result = Int(components[0]) / Int(components[2])
        default: print(components)
        }
        return (input, result)
    } else {return (input, Int(input))}
    
}
