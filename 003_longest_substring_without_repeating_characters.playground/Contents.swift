//: Playground - noun: a place where people can play

import UIKit

/*
Given a string, find the length of the longest substring without repeating characters.

Examples:

Given "abcabcbb", the answer is "abc", which the length is 3.

Given "bbbbb", the answer is "b", with the length of 1.

Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
 */

extension String {
    subscript (i: Int) -> Character {
        return self[self.startIndex.advancedBy(i)]
    }
}

extension String {
    var length: Int {return characters.count}  // Swift 2.0
}

//class Solution {
//    func lengthOfLongestSubstring(s: String) -> Int {
//        if s.length < 2 {
//            return s.length
//        }
//        
//        var hashMap = Dictionary<Character, Int>()
//        var tmpMaxLength = 1
//        var maxLength = 1
//        hashMap[s[0]] = 0
//        for i in 1..<s.length {
//            if let lastPosition = hashMap[s[i]] {
//                if lastPosition < i - tmpMaxLength {
//                    tmpMaxLength += 1
//                } else {
//                    tmpMaxLength = i - lastPosition
//                }
//            } else {
//                tmpMaxLength += 1
//            }
//            
//            hashMap[s[i]] = i
//            if tmpMaxLength > maxLength {
//                maxLength = tmpMaxLength
//            }
//        }
//        
//        return maxLength
//    }
//}

class Solution {
    func lengthOfLongestSubstring(s: String) -> Int {
        var i = 0, j = 0, maxLength = 0
        var hashMap = Dictionary<Character, Int>()
        while j < s.length {
            if let lastPosition = hashMap[s[j]] {
                i = max(lastPosition, i)
            }
            maxLength = max(maxLength, j-i)
            hashMap[s[j]] = j
            j += 1
        }
        return maxLength
    }
}

let solution = Solution()
solution.lengthOfLongestSubstring("abcabcbb")
solution.lengthOfLongestSubstring("bbbbb")
solution.lengthOfLongestSubstring("pwwkew")