//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        var subStrs = str.components(separatedBy: " ")
        var patternDic = [Character: String]()
        var result = true

        guard pattern.characters.count == subStrs.count else {
            return false
        }

        for (index, char) in pattern.characters.enumerated() {
            if patternDic[char] == nil {
                let filterDic = patternDic.filter { (key, value) in
                    return (key != char && value == subStrs[index])
                }

                if filterDic.isEmpty {
                    patternDic[char] = subStrs[index]
                } else {
                    result = false
                    break
                }
            } else {
                if patternDic[char] != subStrs[index] {
                    result = false
                }
            }
        }

        return result
    }
}
