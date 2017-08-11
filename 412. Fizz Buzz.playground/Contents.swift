//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        var result = [String]()
        for i in (1 ... n) {
            if i % (3 * 5) == 0 {
                result.append("FizzBuzz")
            } else if i % 3 == 0 {
                result.append("Fizz")
            } else if i % 5 == 0 {
                result.append("Buzz")
            } else {
                result.append(String(i))
            }
        }
        return result
    }
}
