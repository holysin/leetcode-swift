//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        return a == b ? -1 : max(a.characters.count, b.characters.count)
    }
}

"aefawfawfawfaw"
"aefawfeawfwafwaef"
let solution = Solution()
solution.findLUSlength("aefawfawfawfaw", "aefawfeawfwafwaef")

