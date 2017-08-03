//: Playground - noun: a place where people can play

import UIKit

class Solution {
    func findComplement(_ num: Int) -> Int {
        var leftOnePosition: Int = 0

        for i in (0 ..< 31) {
            let value = (1 << i) & num
            if value > 0 {
                leftOnePosition = i
            }
        }

        return (1 << (leftOnePosition + 1) - 1) ^ num
    }
}

let s = Solution()
s.findComplement(5)
