//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var result: [String: [String]] = [:]
        for str in strs {
            let key = String(str.characters.sorted())
            if var tmpStrs = result[key] {
                tmpStrs.append(str)
                result[key] = tmpStrs
            } else {
                result[key] = [str]
            }
        }

        return result.map { $0.value }
    }
}

let solution = Solution()
solution.groupAnagrams(["abc", "acb", "cba"])