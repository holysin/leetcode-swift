//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        let sArray = s.unicodeScalars.map { Int($0.value) }
        let tArray = t.unicodeScalars.map { Int($0.value) }

        let cInt = sArray.reduce(0, ^) ^ tArray.reduce(0, ^)

        return Character(UnicodeScalar(cInt)!)
    }
}
