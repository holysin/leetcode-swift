//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func reverseWords(_ s: String) -> String {
        var resultArray = [String]()
        let words = s.components(separatedBy: .whitespaces)
        for word in words {
            resultArray.append(String(word.characters.reversed()))
        }
        return resultArray.joined(separator: " ")
    }
}
