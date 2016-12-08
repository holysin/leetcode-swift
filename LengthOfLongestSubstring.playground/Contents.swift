//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var result = 0
        var startIndex = s.startIndex
        var endIndex = startIndex
        var subString = ""

        func length(s: String, startIndex: String.Index, endIndex: String.Index, length: Int) -> Int {
            var tmpLength = length
            if s.distance(from: startIndex, to: endIndex) > length {
                tmpLength = s.distance(from: startIndex, to: endIndex)
            }
            return tmpLength
        }

        while (endIndex < s.endIndex) {
            if subString.contains(String(s[endIndex])) && startIndex < endIndex {
                result = length(s: s, startIndex: startIndex, endIndex: endIndex, length: result)
                startIndex = s.index(after: startIndex)
                subString = s.substring(with: startIndex..<endIndex)
                continue
            }
            endIndex = s.index(after: endIndex)
            subString = s.substring(with: startIndex..<endIndex)
        }

        result = length(s: s, startIndex: startIndex, endIndex: endIndex, length: result)

        return result
    }
}

let string = "dvdf"
let solution = Solution()
solution.lengthOfLongestSubstring(string)
