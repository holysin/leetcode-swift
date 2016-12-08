//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Solution {
    func canWinNim(_ n: Int) -> Bool {
        return n % 4 > 0
    }
}

let solution = Solution()
solution.canWinNim(7)
