//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func findWords(_ words: [String]) -> [String] {
        var result = [String]()

        let keyboardStrokeDict = [
            "q": 0, "w": 0, "e": 0, "r": 0, "t": 0, "y": 0, "u": 0, "i": 0, "o": 0, "p": 0,
            "a": 1, "s": 1, "d": 1, "f": 1, "g": 1, "h": 1, "j": 1, "k": 1, "l": 1,
            "z": 2, "x": 2, "c": 2, "v": 2, "b": 2, "n": 2, "m": 2
        ]

        for word in words {
            var row: Int?
            var isOneRow = true
            for char in word.characters {
                let lowercasedChar = String(char).lowercased()
                if row == nil {
                    row = keyboardStrokeDict[lowercasedChar]
                } else {
                    let tmp = keyboardStrokeDict[lowercasedChar]
                    if tmp != row {
                        isOneRow = false
                        break
                    }
                }
            }

            if isOneRow {
                result.append(word)
            }
        }

        return result
    }
}
