//
//  Parser.swift
//  SwiftUIMacOSCalculator
//
//  Created by Angelos Staboulis on 30/11/24.
//

import Foundation
class Parser{
    func evaluateRPN(tokens:[String])->Int{
        var a = 0
        var b = 0
        var stack = [Int]()
        
        for token in tokens {
            switch token {
            case "+":
                b = stack.removeLast()
                a = stack.removeLast()
                stack.append(a + b)
            case "-":
                b = stack.removeLast()
                a = stack.removeLast()
                stack.append(a - b)
            case "*":
                b = stack.removeLast()
                a = stack.removeLast()
                stack.append(a * b)
            case "/":
                b = stack.removeLast()
                a = stack.removeLast()
                stack.append(a / b)
            default:
                stack.append(Int(token)!)
            }
        }
        
        return stack.removeLast()
    }
  
    
}
