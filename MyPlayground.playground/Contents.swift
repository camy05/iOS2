//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

var equation = " (11.0 / 2.0) + 3"

let expr = NSExpression(format: equation)
if let result = expr.expressionValue(with: nil, context: nil) as? Double {
    print(result) // 5.5
} else {
    print("failed") // https://stackoverflow.com/questions/24704028/nsexpression-calculator-in-swift
}